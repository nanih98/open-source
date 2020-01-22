# Steps

```sh
$ cd /srv
$ git clone https://github.com/matcornic/hugo-theme-learn.git docs
$ cd docs/exampleSite && cp -ar * ../
```
> **Note**: the theme I use from Hugo is an example, you can download the one you need in the page [Hugo Templates](https://themes.gohugo.io/)



**Now comment the line 'theme=...' in config.toml (/srv/docs/conifg.toml)**

![Github Hugo](https://storage.googleapis.com/devopstech/Github-photos/hugo-github.png)


**Now, run the docker-compose.yml file and check the logs of the container.**


![Github Hugo](https://storage.googleapis.com/devopstech/Github-photos/hugo-github-2.png)

> **Note:** as you can see, the CMD passed it to the docker-compose instead of the dockerfile, so every time I change a parameter in the hugo server I don't have to reconstruct the image.

### Change the line according to your needs.


# Contact

Any problem? Contact me **info@devopstech.org**. 
