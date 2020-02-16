#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""The setup script."""

from setuptools import setup, find_packages

with open('README.md') as readme_file:
    readme = readme_file.read()


requirements = [
    'pybuilder==0.11.12'
    # TODO: put package requirements here
]

setup_requirements = [
    'pybuilder==0.11.12'
    # TODO(RozieAI): put setup requirements (distutils extensions, etc.) here
]

test_requirements = [
    'pybuilder==0.11.12'
    # TODO: put package test requirements here
]

setup(
    name='webapi_test',
    version='0.1.0',
    description="Python Boilerplate contains all the boilerplate you need to create a Python package.",
    long_description=readme + '\n\n',
    author="Rozie AI",
    author_email=' info@rozie.ai',
    url='https://github.com/RozieAI/webapi_test',
    packages=find_packages(include=['webapi_test']),
    include_package_data=True,
    install_requires=requirements,

    zip_safe=False,
    keywords='webapi_test',
    classifiers=[
        "Programming Language :: Python :: 2",
        'Programming Language :: Python :: 2.6',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
        'Programming Language :: Python :: 3.6',
    ],
    test_suite='tests',
    tests_require=test_requirements,
    setup_requires=setup_requirements,
)
