from setuptools import setup, find_packages

setup(name='pddlgym',
      version='0.0.4',
      install_requires=['matplotlib', 'pillow', 'gym', 'imageio', 'scikit-image'],
      packages=find_packages(),
      include_package_data=True,
)

