module JekyllGithubSample
  class ReferenceTag < CodeTag

    def render(context)
      <<MARKUP.strip
<div class="github-sample-reference">
  <div class="meta-info">
    #{@github_file.filename} <a href="#{@github_file.web_uri}">view</a> <a href="#{@github_file.raw_uri}">raw</a>
  </div>
</div>
MARKUP
    end
  end
end

Liquid::Template.register_tag('github_sample_ref', JekyllGithubSample::ReferenceTag)
