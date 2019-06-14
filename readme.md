## Bring up the container
```
docker-compose up
```

## Shell into container
```
docker-compose exec app sh
```

## Make PDF from HTML

```
python
>>> from weasyprint import HTML
>>> HTML('http://localhost/examples/sample_grid.html').write_pdf('/app/pdfs/sample_grid.pdf')
```
## WeasyPrint Documentation

> https://weasyprint.readthedocs.io/en/latest/tutorial.html
