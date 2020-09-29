# Dependency 

### 1. i3blocks

 To install the i3blocks run the following command
 ```
 sudo apt install i3blocks
 ```
 after installing i3blocks put the i3blocks config file in `~/.config/i3/i3blocks.conf`

### 2. nitrogen
  > used to set the wallpaper
  To install nitrogen run the following command
  ```
  sudo apt install nitrogen 
  ```
  Nitrogen config located in `.conig/nitrogen`

### 3. rofi
  >For custom D-menu 
  To install rofi run the following command
  ```
  sudo apt install rofi
  ```
  Rofi config located in `.config/rofi`

### 4. autotiling
  To install autotiling run the following commannd

  ```
  pip install autotiling
  ```
  > or link to gitbub repo 
  [link to git repo of autotiling!](https://github.com/nwg-piotr/autotiling)

  After installing the autotiling 
  put this stuff in your `.xprofile`
  ```
  # Stop screen from going blank
  xset s off
  xset -dpms
  xset s noblank
  # Faster key repeat and delay
  xset r rate 210 40	
  ```
### 5. xbacklight

  To install the xbacklight run the following command 

  ```
  sudo apt install xbacklight
  ```
### 6. compton
	
  TO Install compton run the following command

  ```
  sudo apt install compton
  ```
  after installing put the `compton.conf` file into the `.config`

### 7. i3gaps
  To install the i3gaps run the `i3wm-gaps-install.sh` located in the git repo `dotfiles/i3configfiles/`


### screenshot
  screenshot of desktop
![i3wm](https://github.com/codeblooded-47/dotfiles/blob/master/i3configfiles/screenshot.png)
