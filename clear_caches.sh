#!/bin/bash

# Check if zenity is installed
if ! command -v zenity &> /dev/null
then
    zenity --error --text="Zenity is not installed. Please install it with: sudo apt install zenity"
    exit 1
fi

(
echo "10"; sleep 0.5
echo "# Clearing system caches..."
sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null

echo "30"; sleep 0.5
echo "# Removing unnecessary packages..."
sudo apt-get autoremove -y > /dev/null

echo "50"; sleep 0.5
echo "# Cleaning package cache..."
sudo apt-get clean > /dev/null
sudo apt-get autoremove --purge -y > /dev/null

echo "70"; sleep 0.5
echo "# Removing temporary files..."
sudo rm -rf /tmp/* /var/tmp/*

echo "80"; sleep 0.5
echo "# Clearing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*

echo "90"; sleep 0.5
echo "# Removing unused dependencies..."
sudo apt-get autoclean -y > /dev/null

echo "100"; sleep 0.5
) |
zenity --progress \
  --title="HackWithMusanna-HWM Cache Cleaner" \
  --text="Initializing cleanup..." \
  --percentage=0 \
  --auto-close \
  --width=400

# Show success message
if [ $? -eq 0 ]; then
    zenity --info --title="Cleanup Complete" --text="🧹 System cleanup complete!\n\nBy Musanna Galib" --width=420
else
    zenity --error --title="Cancelled" --text="Cleanup process was cancelled."
fi

