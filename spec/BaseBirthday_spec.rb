require "BaseBirthday.rb"

module BaseBirthday
  describe Base do
    let(:base)   { Base.new} 

    context  "#start" do
      before(:each) {base.stub(:start_base)}
        it "welcome msg" do
          base.should_receive(:puts)
          base.start
        end  
  
        it "call generation_folders" do
          base.should_receive(:generation_folders)
          base.start        
        end


        it "call generation_files" do
          base.should_receive(:generation_files)
          base.start        
        end
        
        it "call start_the_base" do
          base.should_receive(:start_base)
          base.start
        end
    end

    context  "#generation_files" do
        it "29" do
          base.generation_files
          base.day.should have(29).items
        end

        it "30" do
          base.generation_files
          base.day2.should have(30).items
        end

        it "31" do
          base.generation_files
          base.day3.should have(31).items
        end
    end

    context  "#start_base" do
      it "should call change_date" do
         base.stub(:gets).and_return('s')
         base.should_receive(:change_date)
         base.start_base
      end

      it "should call exit " do
        base.stub(:gets).and_return('e')
        base.should_receive(:exit)
        base.start_base
      end

      it "should call start_base" do
        base.stub(:gets).and_return('')
        base.should_receive(:start_base)
        base.start_base
      end
    end

    context  "#writing_plus_file" do
      it "should call save_to_file" do
         base.stub(:gets).and_return('y')
         base.should_receive(:save_to_file)
         base.should_receive(:start_base)
         base.writing_plus_file
      end

      it "should call start_base " do
        base.stub(:gets).and_return('n')
        base.should_receive(:start_base)
        base.writing_plus_file
      end

      it "should call saves_result" do
        base.stub(:gets).and_return('')
        base.should_receive(:writing_plus_file)
        base.writing_plus_file
      end
    end
 
  end
end
