import configparser

def readINIKey(iniFile, label, key):
    '''
    Read a INI config keys

    Args:
        iniFile       = Name of ini file
        label         = Label of section in ini file
        key           - Key to be acessed

    Returns:
        (str): content in INI key

    Example:
        value = readINIKey('setup.ini', 'PRD', 'DB_HOST')
    '''
    config = configparser.ConfigParser()
    config.read(iniFile)

    result = config.get(label,key)

    return result

def INIValues(files, labels):
    """
    Return multiple labels in INI file

    Args:
        files (list): list of values with files with relative path
        labels (list): list of labels (see more in example)

    Returns:
        (list): dictionary with keys and their respective value

    Example:
        Code: 
            import INI_lib

            files = [
                'setup.ini',
                'dashboard/setup.ini',
                '/dashboard/setup.ini'
            ]

            labels = [
                {'label': 'Setup', 'key': 'PageTimeUpdate', 'default': '5'                                                                    },
                {'label': 'Setup', 'key': 'PageTimePix'   , 'default': '5'                                                                    },
                {'label': 'Setup', 'key': 'EnviromentName', 'default': 'HLG'                                                                  },
                {'label': 'Theme', 'key': 'Logo'          , 'default': 'https://www.bancotopazio.com.br/wp-content/uploads/2019/05/ico_6.png' },
                {'label': 'Theme', 'key': 'BackPicture'   , 'default': 'https://www.bancotopazio.com.br/wp-content/uploads/2019/05/ico_6.png' },
                {'label': 'Theme', 'key': 'ColorHead'     , 'default': '#f8c471'                                                              },
                {'label': 'Theme', 'key': 'ColorBody'     , 'default': '#fad7a0'                                                              }
            ]

            print(INI_lib.INIValues(files,labels))

        Result:
            {'PageTimeUpdate': '5', 'PageTimePix': '5', 'EnviromentName': 'PRD', 'Logo': 'https://v2assets.zopim.io/4UTdH6YgZTvTDKFnMs3aaaDqxMMlR5KE-banner?1557803643080', 'BackPicture': 'https://www.bancotopazio.com.br/wp-content/uploads/2019/05/ico_6.png', 'ColorHead': '#4993ec', 'ColorBody': '#dff7fd'}
    """
    output = {}

    for reg in labels:
        value = None

        for file in files:
            try:
                foundValue = readINIKey(file, reg['label'], reg['key'])
            except:
                foundValue = None
            
            if foundValue != None:
                value = foundValue

        if value != None:
            output[reg['key']] = value
        else:
            output[reg['key']] = reg['default']

    return output