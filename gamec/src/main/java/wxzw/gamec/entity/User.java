package wxzw.gamec.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name="g_user")
public class User implements Serializable {
    private Integer id;
    private String userName;
    private String passWord;

    public User(){

    }

    public User(String userName,String passWord){
        this.userName=userName;
        this.passWord=passWord;
    }

/**
 * 生成主键的策略
 */
    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return userName;
    }

    public void setName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("BookType{");
        sb.append("id=").append(id);
        sb.append(", userName='").append(userName);
        sb.append(", password='").append(passWord).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
