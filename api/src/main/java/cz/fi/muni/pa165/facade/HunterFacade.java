package cz.fi.muni.pa165.facade;

import cz.fi.muni.pa165.dto.HunterCreateDTO;
import cz.fi.muni.pa165.dto.HunterDTO;
import cz.fi.muni.pa165.dto.UserAuthenticateDTO;
import cz.fi.muni.pa165.dto.VisitDTO;
import cz.fi.muni.pa165.exception.HunterAuthenticationException;

import java.util.Collection;

/**
 * Created by Erik Macej 433744 , on 20.11.16.
 *
 * @author Erik Macej 433744
 */
public interface HunterFacade {

    /**
     * Register given hunter with his password
     *
     * @param hunter              - hunter to register
     * @param unencryptedPassword - hunter's password
     */
    void registerHunter(HunterDTO hunter, String unencryptedPassword) throws HunterAuthenticationException;

    /**
     * Authenticates Hunter
     *
     * @return - true only if hashed password is equal with hunter passwordHash
     */
    boolean authenticate(UserAuthenticateDTO hunter) throws HunterAuthenticationException;

    /**
     * Updates hunter
     *
     * @param hunter
     * @return - updated hunter
     */
    HunterDTO update(HunterDTO hunter);

    /**
     * Deletes hunter from Database.
     *
     * @param id id
     */
    void delete(Long id);

    /**
     * Finds Hunter by id.
     *
     * @param id identifier of Hunter
     * @return Hunter
     */
    HunterDTO findById(Long id);

    /**
     * Finds Hunter by email.
     *
     * @param email email of Hunter
     * @return Hunter
     */
    HunterDTO findByEmail(String email);

    /**
     * Finds all Hunters from Database
     *
     * @return list of Hunters
     */
    Collection<HunterDTO> findAll();

    /**
     * Changes user password
     */
    void changePassword(Long hunterId, String oldUnencryptedPassword, String newUnencryptedPassword)
            throws HunterAuthenticationException;

    /**
     * Add visit to hunter
     */
    void addVisit(Long hunterId, VisitDTO visitDto);

    /**
     * Remove visit from hunter
     */
    void removeVisit(Long hunterId, VisitDTO visitDto);
}
