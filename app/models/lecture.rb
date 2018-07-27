class Lecture < ApplicationRecord
    has_many :user_voices, dependent: :destroy
    def self.csearch(name_search,module_search) #self.でクラスメソッドとしている
        if name_search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
          Lecture.where(['class_name LIKE ?', "%#{name_search}%"]).where(['module LIKE ?', "%#{module_search}%"])
        else
          Lecture.all #全て表示。
        end
    end
end
