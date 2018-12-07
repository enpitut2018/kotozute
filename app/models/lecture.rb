class Lecture < ApplicationRecord
    has_many :user_voices, dependent: :destroy
    acts_as_taggable
    def self.csearch(name_search,module_search,grade_search,day_search,period_search,tag_search) #self.でクラスメソッドとしている
      arr=[name_search,module_search,grade_search,day_search,period_search,tag_search]
      check="false"
      arr.each{|search|
        if search != ""
          check="true"
          break
        end
      }
        if check=="true" #Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
          if tag_search.present? #11tag_searchがある場合とない場合で検索文を分ける
            Lecture.where(['class_name LIKE ?', "%#{name_search}%"]).where(['module LIKE ?', "%#{module_search}%"]).where(['grade LIKE ?', "%#{grade_search}%"])
            .where(['period LIKE ?', "%#{day_search}%"]).where(['period LIKE ?', "%#{period_search}%"]).tagged_with("#{tag_search}")
          else
            Lecture.where(['class_name LIKE ?', "%#{name_search}%"]).where(['module LIKE ?', "%#{module_search}%"]).where(['grade LIKE ?', "%#{grade_search}%"])
            .where(['period LIKE ?', "%#{day_search}%"]).where(['period LIKE ?', "%#{period_search}%"])
          end
        else
          Lecture.all #全て表示。
        end
    end
end
