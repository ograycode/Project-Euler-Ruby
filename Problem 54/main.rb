class Main

  def hand_ranks(key)
    hand_ranks = {"High Card" => 1,  "One Pair" => 2,
                 "Two Pairs" => 3, "Three of a Kind" => 4,
                 "Straight" => 5, "Flush" => 6,
                 "Full House" => 7, "Four of a Kind" => 8,
                 "Straight Flush" => 9, "Royal Flush" => 10}
    hand_ranks[key]
  end

  card_ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King" ]


  def main()
    hand = getHand

  end

  def getHand()
    hand = ["2D", "9C", "AS", "AH", "AC", "3D", "6D", "7D", "TD", "QD"]
  end

  def get_player_one_hand
    player_one
    if player_one == null_object?
      player_one = getHand.max(4)
    end
    player_one
  end

  def get_player_two_hand
    player_two
    if player_two == null_object?
      player_two = getHand.minmax(5, 9)
    end
    player_two
  end

  def get_player_hand_rank(hand)
    player_hand_rank
    if royal_flush?
      player_hand_rank = hand_ranks("Royal Flush")
    end
  end

  def royal_flush?(hand)
    answer = false

  end

  def get_suit(card)
    suit = card[1]
  end

end