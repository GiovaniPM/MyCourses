import INI_lib

files = [
    'setup.ini'
]

labels = [
    {'label': 'Setup', 'key': 'PageTimeUpdate', 'default': '5'  },
    {'label': 'Setup', 'key': 'PageTimePix'   , 'default': '5'  },
    {'label': 'Setup', 'key': 'EnviromentName', 'default': 'HLG'}
]

print(INI_lib.INIValues(files,labels))