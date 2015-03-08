---
layout: post
title: Search Results
---

{% raw %}
<script id="search-results-template" type="text/mustache">
  {{#entries}}
    <article>
      <h3>
        {{#date}}<small><time datetime="{{pubdate}}" pubdate>{{displaydate}}</time>
        <a href="{{url}}">{{title}}</a>
        </small>{{/date}}
      </h3>
    </article>
  {{/entries}}
</script>
{% endraw %}

<section id="search-results" style="display: none;">
  <p>Search results</p>
  <div class="entries">
  </div>
</section>
