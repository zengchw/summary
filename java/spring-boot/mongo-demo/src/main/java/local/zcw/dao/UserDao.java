package local.zcw.dao;

import local.zcw.doman.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by zcw on 2017/02/24.
 */
@Repository
public interface UserDao extends MongoRepository<User, String> {
//    User findByUsername(String username);
//
//    User save(User entity);
}
