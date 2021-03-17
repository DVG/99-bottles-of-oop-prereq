class Bottles
  def verse(number)
    [observe(number), confirm(number), action(number), outcome(number)].join("")
  end

  def verses(starting_verse, ending_verse)
    (ending_verse..starting_verse).to_a.reverse.map do |number|
      verse(number)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def observe(number)
    case number
    when 1 then "1 bottle of beer on the wall, "
    when 0 then "No more bottles of beer on the wall, "
    else "#{number} bottles of beer on the wall, "
    end
  end

  def confirm(number)
    case number
    when 1 then "1 bottle of beer.\n"
    when 0 then "no more bottles of beer.\n"
    else "#{number} bottles of beer.\n"
    end
  end

  def action(number)
    case number
    when 1 then "Take it down and pass it around, "
    when 0 then "Go to the store and buy some more, "
    else "Take one down and pass it around, "
    end
  end

  def outcome(number)
    case number
    when 2 then "1 bottle of beer on the wall.\n"
    when 1 then "no more bottles of beer on the wall.\n"
    when 0 then "99 bottles of beer on the wall.\n"
    else "#{number-1} bottles of beer on the wall.\n"
    end
  end
end