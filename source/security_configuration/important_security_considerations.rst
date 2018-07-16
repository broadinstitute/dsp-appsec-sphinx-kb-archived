Important Security Considerations
=================================

.. contents::

Content Security Policy
~~~~~~~~~~~~~~~~~~~~~~~

The main purpose of setting a CSP is to give your browser a way to trust content from a certain source.
You can define approved sources for content on your site that the browser can load and by specifying only those specific
sources you can protect users from a whole range of content injection attack such as XSS.

The specification comes with many directives and it goes like this:

```
Content-Security-Policy: policy
```

However, from a security perspective there are two main risks related to CSP:

* Policies misconfiguration
* Too permissive policies



Ready to test your CSP configuration? Try `CSP Evaluator <https://csp-evaluator.withgoogle.com/>`__






