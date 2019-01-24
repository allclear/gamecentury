package wxzw.gamec.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "g_user_detail")
public class UserDetail implements Serializable {
    private Integer id;
    private String introduce;
    private String msgBoard;

    private UserDetail userDetail;

    public UserDetail(){ }

    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getMsgBoard() {
        return msgBoard;
    }

    public void setMsgBoard(String msgBoard) {
        this.msgBoard = msgBoard;
    }

    @OneToOne
    public UserDetail getUserDetail() {
        return userDetail;
    }

    public void setUserDetail(UserDetail userDetail) {
        this.userDetail = userDetail;
    }

}
