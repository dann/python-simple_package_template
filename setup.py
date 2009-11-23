from setuptools import setup, find_packages
import sys, os

version = '0.01'

setup(name='simple_package_template',
      version=version,
      description="simple package template",
      long_description="""\
""",
      classifiers=[], # Get strings from http://pypi.python.org/pypi?%3Aaction=list_classifiers
      keywords='paster',
      author='dann',
      author_email='techmemo@gmail.com',
      url='http://github.com/dann/python-simple_package_template',
      license='MIT',
      packages=find_packages(exclude=['ez_setup', 'examples', 'tests']),
      include_package_data=True,
      zip_safe=False,
      install_requires=[
          # -*- Extra requirements: -*-
      ],
      entry_points="""
        [paste.paster_create_template]
        simple_package=simple_package_template.template:SimplePackageTemplate
      """,
      )
