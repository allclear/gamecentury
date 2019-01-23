package wxzw.gamec.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "g_gamedetail")
public class GameDetail implements Serializable {
    /**
     * 唯一标识
     */
    private Integer id;
    private String gameName;
    /**
     * 平台
     */
    private String plantForm;
    /**
     * 类型
     */
    private String kind;
    /**
     * 封皮
     */
    private String coverImg;
    /**
     * 介绍
     */
    private String describe;
    /**
     * 细节图片
     */
    private String imgDetail;

    public GameDetail(){ }


    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getPlantForm() {
        return plantForm;
    }

    public void setPlantForm(String plantForm) {
        this.plantForm = plantForm;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getCoverImg() {
        return coverImg;
    }

    public void setCoverImg(String coverImg) {
        this.coverImg = coverImg;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getImgDetail() {
        return imgDetail;
    }

    public void setImgDetail(String imgDetail) {
        this.imgDetail = imgDetail;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("GameDetail{");
        sb.append("id=").append(id);
        sb.append(", gameName='").append(gameName).append('\'');
        sb.append(", kind='").append(kind).append('\'');
        sb.append(", plantForm='").append(plantForm).append('\'');
        sb.append(", describe='").append(describe).append('\'');
        sb.append(", coverImg='").append(coverImg).append('\'');
        sb.append(", imgDetail='").append(imgDetail).append('\'');
        sb.append('}');
        return sb.toString();
    }

}
