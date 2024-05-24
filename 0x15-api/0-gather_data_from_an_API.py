#!/usr/bin/python3
'''
gather employee data from API
'''

import re
import requests
import sys

REST_API = "https://jsonplaceholder.typicode.com"

if __name__ == '__main__':
    if len(sys.argv) > 1:
        if re.fullmatch(r'\d+', sys.argv[1]):
            id = int(sys.argv[1])
            Users = requests.get('{}/users/{}'.format(REST_API, id)).json()
            Todos = requests.get('{}/todos'.format(REST_API)).json()
            Empolyee_name = Users.get('name')
            Number_tasks = list(filter(lambda x: x.get('userId') == id, Todos))
            completed_tasks = list(filter(lambda x: x.get('completed'), Number_tasks))
            print(
                'Employee {} is done with tasks({}/{}):'.format(
                    Empolyee_name,
                    len(completed_tasks),
                    len(Number_tasks)
                )
            )
            if len(completed_tasks) > 0:
                for task in completed_tasks:
                    print('\t {}'.format(task.get('title')))
