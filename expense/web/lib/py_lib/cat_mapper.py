#  This module deals with the returned value from the category_mapper.js
#  function.
import random
from pprint import pprint as p

def process_parent_child_list(category_map):
    category_json = {}
    for category in category_map:
        parent_child_dict = {}
        if isinstance(category, (list, tuple)):
            parent = category[0]
            children = category[1:]
            parent_child_dict.update({parent:
                                      {
                                          'index':
                                          category_map.index(category) + 1,
                                          'children': children}
                                      })
            category_json.update(parent_child_dict)
        else:
            category_json.update({category:
                                  {'index': category_map.index(category) + 1}
                                  })
    return category_json


#Given a processed category map of the form:
#
#   {category : {'index': 1, 'children':'child'} }
#
#This will choose which category is selected
def select_random_category(cat_map):
    cat_length = len(cat_map) - 1
    rand_cat_num = random.randint(0, cat_length)
    cat_keys = cat_map.keys()
    parent = cat_keys[rand_cat_num]
    category = cat_map[parent]
    chosen_child = None
    child_index = None
    if 'children' in category:
        children = category['children']
        child_len = len(children)
        child_rand = random.randint(0, child_len)
        if child_rand != child_len:
            chosen_child = children[child_rand]
            # CSS of child categories start at 1, parents start at 0
            child_index = child_rand + 1
    return (parent, category['index'], chosen_child, child_index)


def select_specific_category(parent_cat, child_cat, cat_map):
    #Normalize the keys in cat_map to lowercase
    cat_map_norm = {}
    for key in cat_map:
        cat_map_norm[key.lower()] = cat_map[key]
    cat_keys = cat_map_norm.keys()
    if parent_cat:
        parent_cat = parent_cat.lower()
    else:
        return (False, 'Parent Category not provided')
    if parent_cat not in cat_keys:
        return (False, '%s is not a valid parent category' % parent_cat)
    parent = cat_map_norm[parent_cat]
    if child_cat:
        child_cat = child_cat.lower()
        if child_cat not in [x.lower() for x in parent['children']]:
            return (False, '%s - %s not valid choice' % (parent_cat, child_cat))
        else:
            # XPath of child categories start at 1, parents start at 0
            child_index = [
                x.lower() for x in parent['children']].index(child_cat) + 1
            return (parent_cat, parent['index'], child_cat, child_index)
    else:
        return (parent_cat, parent['index'], None, None)


def category_selector_builder(category_choice, parent_selector,
                              child_selector_add):
    parent_path = parent_selector.replace('parent_id',
                                          str(category_choice[1]))
    path = ''
    if category_choice[2]:
        path = parent_path.replace('> a', child_selector_add)
        path = path.replace('child_id', str(category_choice[3]))
    else:
        path = parent_path
    return path, category_choice[0]

if __name__ == '__main__':
    pass
