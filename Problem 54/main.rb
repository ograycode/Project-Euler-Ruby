class Main

  def get_hand_rank(key)
    hand_ranks = {"High Card" => 1,  "One Pair" => 2,
                 "Two Pairs" => 3, "Three of a Kind" => 4,
                 "Straight" => 5, "Flush" => 6,
                 "Full House" => 7, "Four of a Kind" => 8,
                 "Straight Flush" => 9, "Royal Flush" => 10}
    hand_ranks[key]
  end

  def card_ranks
  card_ranks = [2, 3, 4, 5, 6, 7, 8, 9, "T", "J", "Q", "K"]
  end

  def cards_in_a_deck
  cards_in_a_deck = card_ranks.push("A")
  end

  def getHand()
    hand = ["2D", "9C", "AS", "AH", "AC", "AD", "KD", "JD", "TD", "QD"]
  end

  def get_player_one_hand
    player_one = getHand.first(5)
  end

  def get_player_two_hand
    player_two = getHand.last(5)
  end

  def get_player_hand_rank(hand)
    player_hand_rank = 0
    if royal_flush? hand
      player_hand_rank = get_hand_rank("Royal Flush")
    else
      player_hand_rank = 0  
    end
    player_hand_rank
  end

  def royal_flush?(hand)
    answer = true
    suit = get_suit hand.first
    hand.each{|card|
        if get_suit(card) == suit && answer
            answer = true
        else
            answer = false
	end
    }
    if answer
        hand.each{|card|
            if cards_in_a_deck.last(5).to_s.include?(get_number(card)) && answer
                answer = true
            else
                answer = false
            end
        }
    end
  end

  def get_suit(card)
    suit = card[1]
  end

  def get_number(card)
    number = card[0]
  end
end

  program = Main.new
  hand = program.getHand()
  puts "Player One: " + program.get_player_hand_rank(program.get_player_one_hand).to_s
  puts "Player Two: " + program.get_player_hand_rank(program.get_player_two_hand).to_s
