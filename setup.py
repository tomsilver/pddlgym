from setuptools import setup, find_packages

setup(name='pddlgym',
      version='0.0.2',
      install_requires=['matplotlib', 'pillow', 'gym', 'imageio'],
      packages=find_packages(),
      include_package_data=True,
)

