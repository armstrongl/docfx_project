# This script was created to convert a directory full
# of HTML files into MultiMarkdown equivalents. It uses
# pandoc to do the conversion.
#
# 1. Install pandoc.
# 2. Copy this script into the directory containing the .html files
# 3. Ensure that the script has execute permissions
# 4. Run the script
#
# By default this will keep the original .html file

FILES=*.html
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.md"
  `pandoc $f -t gfm -o $filename.md --lua-filter=link.lua`
  # uncomment this line to delete the source file.
  # rm $f
done