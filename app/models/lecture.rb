class Lecture < ApplicationRecord
    def self.search(search) #self.でクラスメソッドとしている
        if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
          Lecture.where(['class_name LIKE ?', "%#{search}%"])
        else
          Lecture.all #全て表示。
        end
      end
end
