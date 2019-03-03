require 'pry'

def reformat_languages(languages)
  languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}

  new_hash = {}
  get_all_names(languages).each do |name|
    new_hash[name] = {:type=>get_type(languages, name), :style=>
      get_style(languages, name)}
  end
  puts new_hash
end

def get_all_names(language_hash)
  return_array = []
  language_hash.each do |style, languages|
    languages.each do |name, data|
      return_array.push(name)
    end
  end
  return_array
end

def get_type(language_hash, language)
  language_hash.each do |style, languages|
    languages.each do |name, data|
      if name == language
        return data[:type]
      end
    end
  end
end

def get_style(language_hash, language)
  style_array = []
  language_hash.each do |style, languages|
    languages.each do |name, data|
      if name == language
        style_array.push(style)
      end
    end
  end
  style_array
end
