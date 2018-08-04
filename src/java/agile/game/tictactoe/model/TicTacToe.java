package agile.game.tictactoe.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author GuideJunG
 */
public class TicTacToe {

    private int countFillTable;
    private String valueFillTable[];
    private String player1;
    private String player2;
    private int player1Score;
    private int player2Score;
    private int tieScore;

    public TicTacToe(String player1, String player2) {
        this.player1 = player1;
        this.player2 = player2;
    }

    public void setCountFillTable(int countFillTable) {
        this.countFillTable = countFillTable;
    }

    public void setValueFillTable(String[] valueFillTable) {
        this.valueFillTable = valueFillTable;
    }

    public void setPlayer1(String player1) {
        this.player1 = player1;
    }

    public void setPlayer2(String player2) {
        this.player2 = player2;
    }

    public void setPlayer1Score(int player1Score) {
        this.player1Score = player1Score;
    }

    public void setPlayer2Score(int player2Score) {
        this.player2Score = player2Score;
    }

    public void setTieScore(int tieScore) {
        this.tieScore = tieScore;
    }

    public int getCountFillTable() {
        return countFillTable;
    }

    public String[] getValueFillTable() {
        return valueFillTable;
    }

    public String getPlayer1() {
        return player1;
    }

    public String getPlayer2() {
        return player2;
    }

    public int getPlayer1Score() {
        return player1Score;
    }

    public int getPlayer2Score() {
        return player2Score;
    }

    public int getTieScore() {
        return tieScore;
    }

    public void addXOToSlot(String player, int position) {
        valueFillTable[position] = player;
        countFillTable++;
    }

    //Method createTable
    public void createTable() {
        valueFillTable = new String[9];
    }

    //Method swapTurn
    public String swapTurn(int countFillTable) {
        if (countFillTable % 2 == 0) {
            return "O";
        } else {
            return "X";
        }
    }
    
    //Method checkVertical
    public boolean checkVertical(String player){
        boolean status = false;
        if(valueFillTable[0] == player && valueFillTable[3] == player && valueFillTable[6] == player){
            updateScorePlayer(player);
            status = true;
        }else if(valueFillTable[1] == player && valueFillTable[4] == player && valueFillTable[7] == player){
            updateScorePlayer(player);
            status = true;
        }else if(valueFillTable[2] == player && valueFillTable[5] == player && valueFillTable[8] == player){
            updateScorePlayer(player);
            status = true;
        }else{
            status = false;
        }
        return status;
    }
     
     public void updateScorePlayer(String player){
         if(player.equals("X")){
             player1Score++;
         }else{
             if(player.equals("O")){
                 player2Score++;
             }
         }
     }
     
    //Method swapTurn
     public String swapTurn(){
         if(countFillTable % 2 == 0){
             return "O";
         }else{
             return "X";
         }
     }
     
     //Method isTie 
     public void isTie(){
         if(countFillTable<9){
             swapTurn();
         }else {
             tieScore++;
         }
     }
}
