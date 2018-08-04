/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import agile.game.tictactoe.model.TicTacToe;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author acer
 */
public class TicTacToeTest {
    
    
    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void startGameHasDefaultValue() {
        TicTacToe ticTacToe = new TicTacToe("X","O");
        assertEquals("X", ticTacToe.getPlayer1());
        assertEquals("O", ticTacToe.getPlayer2());
        
    }
}
