from setuptools import setup, find_packages

setup(name='pddlgym',
      version='0.0.7',
      install_requires=[
            'matplotlib',
            'pillow>=8,<10',
            'gym>=0.24.0',
            'imageio',
            'networkx',
            'scikit-image',
      ],
      packages=find_packages(),
      include_package_data=True,
)
