import os

def list_folders(path):
    try:
        items = os.path.isdir(path)
    except Exception as e:
        print("Error accessing the directory: ", e)
        return[]
    
    folders = []

    for item in items:
        full_path = os.path.join(path, item)
        if os.path.isdir(full_path):
            folders.append(item)

    if not folders:
        print("No folders found or directory is empty")

    return folders