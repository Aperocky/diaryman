import os, sys
import re
import subprocess

# Use python to channel the vim IDE to corresponding learning files.
learning_types = ["python", "javascript", "bash", "unix", "dockers"]
learning_path = os.environ["learning_path"]

os.chdir(learning_path)
for each in learning_types:
    subdirpath = os.path.join(learning_path, each)
    if not os.path.isdir(subdirpath):
        os.mkdir(subdirpath)


def new_file_path(path):
    all_paths = os.listdir(path)
    all_paths = [p for p in all_paths if os.path.isfile(os.path.join(path, p))]
    if not len(all_paths):
        return "Learning_0"
    path_nums = [int(re.findall('\d+$', e)[0]) for e in all_paths
                if len(re.findall('\d+$', e)) > 0] + [0]
    curr_num = max(path_nums)
    fname = "Learning_{}".format(curr_num)
    lcount = sum(1 for line in open(fname)) 
    if lcount > 500:
        return "Learning_{}".format(curr_num + 1)
    else:
        return fname
    

def subdir(learning_type):
    if learning_type not in learning_types:
        print("Learning Type not found, currently accepted learnings: \n{}".format(learning_types))
        learning_type = input("Input learning type plz:")
    else:
        os.chdir(learning_type)
        dirpath = os.path.join(learning_path, learning_type)
        return dirpath
    return subdir(learning_type)
    
if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Please input type of learning, organized learning is best learning.")
        sys.exit()
    learning_type = sys.argv[1]
    dirpath = subdir(learning_type)
    print(dirpath)
    filepath = new_file_path(dirpath)
    subprocess.call(['vim', filepath + ".md"])
    print("Finished editing {} learning".format(learning_type))
