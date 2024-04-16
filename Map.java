
public class Map {
    private Block[][] Matrice;
    private final int numero_righe = 10;
    private final int numero_colonne = 10;

    public Map() {
        Matrice = new Block[numero_righe][numero_colonne];
        for (int i = 0; i < numero_righe; i++) {
            for (int j = 0; j < numero_colonne; j++) {
                Matrice[i][j] = new Block();
            }
        }
    }

    public void display_on_out() {
        for (int i = 0; i < Matrice.length; i++) {
            for (int j = 0; j < Matrice[i].length; j++) {
                System.out.print(" " + Matrice[i][j].display());
            }
            System.out.println();
        }

    }

    public void change_cell(int riga, int colonna) {
        if ((riga >= numero_righe || riga < 0) || ((colonna >= numero_colonne) || colonna < 0)) {
            System.out.println("Dimensione riga o colonna errata");
        } else {
            Matrice[riga][colonna] = new Block('A');
        }
    }

    public void swap(int riga, int colonna) {

        if (riga < 0 || riga >= numero_righe || colonna < 0 || colonna >= numero_colonne - 1) {
            System.out.println("Coordinate non valide per lo scambio.");
            return;
        }

        // Controlla se il blocco sotto il blocco corrente permette il passaggio
        if (Matrice[riga][colonna].getFallThrough()) {
            // Scambia il blocco corrente con il blocco sotto di esso
            Block temp = Matrice[riga][colonna];
            Matrice[riga][colonna] = Matrice[riga + 1][colonna];
            Matrice[riga + 1][colonna] = temp;
            System.out.println("Scambio effettuato correttamente.");
        } else {
            System.out.println("Il blocco sottostante non permette il passaggio.");
        }

    }

    public void insert_at_coords(int riga, int colonna, Block blocco) {
        // Verifica se le coordinate sono valide
        if (riga < 0 || riga >= numero_righe || colonna < 0 || colonna >= numero_colonne) {
            System.out.println("Coordinate non valide per l'inserimento.");
            return;
        }

        // Inserisce il blocco alle coordinate specificate
        Matrice[riga][colonna] = blocco;

        // Verifica se il blocco deve cadere secondo la gravità
        if (blocco.getFallsWithGravity()) {
            // Richiama la funzione di inserimento ricorsiva per far cadere il blocco
            insert_rec(riga, colonna);
        }
    }

    private void insert_rec(int riga, int colonna) {
        // Se la riga è l'ultima o se il blocco sotto non permette il passaggio, termina
        // la ricorsione
        if (riga == numero_righe - 1 || !Matrice[riga + 1][colonna].getFallThrough()) {
            return;
        }

        // Scambia il blocco corrente con il blocco sotto
        Block temp = Matrice[riga][colonna];
        Matrice[riga][colonna] = Matrice[riga + 1][colonna];
        Matrice[riga + 1][colonna] = temp;

        // Richiama la funzione di inserimento ricorsiva con la nuova posizione del
        // blocco
        insert_rec(riga + 1, colonna);
    }

    public void insert_at_coords_iterative(int riga, int colonna, Block blocco) {
        // Verifica se le coordinate sono valide
        if (riga < 0 || riga >= numero_righe || colonna < 0 || colonna >= numero_colonne) {
            System.out.println("Coordinate non valide per l'inserimento.");
            return;
        }

        // Inserisce il blocco alle coordinate specificate
        Matrice[riga][colonna] = blocco;

        // Verifica se il blocco deve cadere secondo la gravità
        if (blocco.getFallsWithGravity()) {
            // Utilizza un ciclo while per far cadere il blocco fino a quando raggiunge una
            // posizione stabile
            while (riga < numero_righe - 1 && Matrice[riga + 1][colonna].getFallThrough()) {
                // Scambia il blocco corrente con il blocco sotto
                Block temp = Matrice[riga][colonna];
                Matrice[riga][colonna] = Matrice[riga + 1][colonna];
                Matrice[riga + 1][colonna] = temp;

                // Aggiorna la riga corrente alla nuova posizione
                riga++;
            }
        }
    }

}