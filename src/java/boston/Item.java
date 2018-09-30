package boston;

import java.io.InputStream;


public class Item {
    private Integer id;
    private String name;
    private String category;
    private String description;
    private Integer fk_creator_id;
    private String diet_class;
    private InputStream item;

    public Item(String name, String category, String description, Integer fk_creator_id, String diet_class,InputStream image) {
        this.name = name;
        this.category = category;
        this.description = description;
        this.fk_creator_id = fk_creator_id;
        this.diet_class = diet_class;
        this.item = image;
    }
    
    public Item(Integer id,String name, String category, String description, Integer fk_creator_id, String diet_class,InputStream image) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.description = description;
        this.fk_creator_id = fk_creator_id;
        this.diet_class = diet_class;
        this.item = image;
    }
    
    public InputStream getItem() {
        return item;
    }

    public void setItem(InputStream item) {
        this.item = item;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getFk_creator_id() {
        return fk_creator_id;
    }

    public void setFk_creator_id(Integer fk_creator_id) {
        this.fk_creator_id = fk_creator_id;
    }

    public String getDiet_class() {
        return diet_class;
    }

    public void setDiet_class(String diet_class) {
        this.diet_class = diet_class;
    }
}
