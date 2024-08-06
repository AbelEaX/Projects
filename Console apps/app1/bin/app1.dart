//import 'package:app1/app1.dart' as app1;
void main() {
  var deck = Deck();
  //deck.shuffle();
  //print(deck);
  //print(deck.deal(5));
  //print(deck);
  print(deck.cardRemoved('Spades', 'Ace'));
  print(deck);

  //print(deck.cardsWithSuit('Diamonds'));
}

class Deck {
  List<Card> cards = [];
  Deck(
      // this.cards,
      ) {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Spades', 'Clubs'];
    for (var suit in suits) {
      for (var rank in ranks) {
        // var card = Card(rank, suit);
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((Card) => Card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards.sublist(handSize);
    return hand;
  }

  cardRemoved(String suit, String rank) {
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String suit;
  String rank;

  Card(
    this.rank,
    this.suit,
  );
  @override
  String toString() {
    // TODO: implement toString
    return '\n$rank of $suit';
  }
}
