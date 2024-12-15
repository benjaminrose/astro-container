# Astro Container

My default scientific Python, with a focus on astronomy, container.

## Uses

My typical use is to pull this container and add a volume that contains the data and analysis scripts.

```shell
docker pull ghcr.io/benjaminrose/astro-container
docker run -it -v .:/root ghcr.io/benjaminrose/astro-container
```
This will add the working directory into the containers working directory. Also, adding `:tag` after `astro-container` will get you something other than the latest container.

I'll add a PodMan example at some point.

## Help and Contributions

This is a repository I use for testing. I may not respond to pull requests or issue on GitHub. 
