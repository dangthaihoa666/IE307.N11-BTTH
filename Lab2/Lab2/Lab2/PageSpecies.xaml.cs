using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Lab2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PageSpecies : ContentPage
    {
        public PageSpecies(Animal animal)
        {
            InitializeComponent();
            Title = animal.AnimalName;
            InitilizeSpecies(animal);
        }
        ObservableCollection<Species> speciesList;
        void InitilizeSpecies(Animal anm)
        {
            speciesList = new ObservableCollection<Species>();

            // khi.
            if (anm.AnimalID == "khi")
            {
                speciesList.Add(new Species
                {
                    SpeciesID = "khi01",
                    VNname = "Khỉ Đuôi dài",
                    LTname = "Macaca fascicularis",
                    ho = "Cercopithecidae",
                    bo = "Primates",
                    Image = "KhiDuoiDai.jfif",
                    dacdiem = "Lông thường có màu từ xám đến nâu đỏ, phía sau cơ thể nhạt hơn. Lông trên đầu mọc hướng về sau. Thường có mào. Mặt có màu hồng. Con đực lớn thường có hai chỏm lông trắng trên miệng ở hai bên như bộ ria. Con cái có lông quanh mồm thưa hơn. Con non sinh ra có màu đen. Đuôi dài và được phủ lông tốt, chiều dài đuôi thường đạt 3/4 hoặc hơn so với chiều dài cơ thể.",
                    phanbo = "Trong nước: Thừa Thiên - Huế trở vào tới Kiên Giang. Thế giới: Nam và Đông nam Á. "
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "khi02",
                    VNname = "Khỉ mốc",
                    LTname = "Macaca assamensis",
                    ho = "Cercopithecidae",
                    bo = "Primates",
                    Image = "KhiMoc.jfif",
                    dacdiem = "Một số đặc điểm để phân biệt so với loài khỉ vàng so với các loài khỉ khác là: Kích thước cơ thể lớn hơn, lông dày và dài hơn. Đuôi dài hơn đuôi khỉ vàng. Bờ sau đít có lông (trụi ở khỉ vàng). Màu lông có thể thay đổi từ màu nâu sẫm tới màu nâu vàng nhạt, nhưng ở vai, gáy, đỉnh đầu và tai thường sáng hơn và vàng hơn phía sau chân và đuôi. Lông xung quanh mặt màu đen, hai má có lông màu xám, phía trong và phía dưới của đùi màu trắng xám. Lông đuôi dài phần dưới đuôi có mầu nhạt hơn phần trên. Hướng của lông ở trên đỉnh đầu rất đặc trưng, mọc rẽ sang phải và sang trái, xoắn ở trên gốc tai. Mào hướng ra phía sau. Có túi má, chai mông lớn, xung quanh có lông. Đuôi thường mập phần gốc, ngắn kém nửa chiều dài thân nhưng dài hơn 10% chiều dài thân và dài hơn bàn chân sau, đuôi không thon, thường thẳng.",
                    phanbo = "Trong nước: Từ Lào Cai đến Quảng Bình. Thế giới: Nam và Đông nam Á cho đến Butan, Trung Quốc."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "khi03",
                    VNname = "Khỉ vàng",
                    LTname = "Macaca mulatta",
                    ho = "Cercopithecidae",
                    bo = "Primates",
                    Image = "KhiVang.jfif",
                    dacdiem = "Toàn thân màu nâu vàng. Con trưởng thành mặt có màu đỏ. Lông trên đỉnh đầu rất ngắn. Phía sau thân màu nâu nhạt hơn phía trước ( Fa, 1985). Đuôi có độ dài trung bình ngắn hơn 3/4 chiều dài đầu và thân, được phủ một lớp lông tốt. Vùng mông ngoài và đùi có màu hung đỏ. Da quanh chai mông tròn, không có lông.",
                    phanbo = "Trong nước: Phân bố từ biên giới phía Bắc tới các tỉnh Tây Nguyên. Thế giới: Nam và Đông nam Á."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "khi04",
                    VNname = "Khỉ đuôi lợn",
                    LTname = "Macaca leonia",
                    ho = "Cercopithecidae",
                    bo = "Primates",
                    Image = "KhiDuoiLon.jfif",
                    dacdiem = "Là một trong những loài lớn nhất trong họ nhà Khỉ Cercopithecidae. Hai bên má lông dài, rậm, màu hung sáng phủ gần kín tai tạo thành đĩa mặt. ở đỉnh đầu lông màu hung xẫm hoặc xám đen tạo thành “xoáy” toả ra xung quanh gần giống cái mũ. Sau trán có một mảng lông hình tam giác màu nâu đậm. Thân phủ lông dài màu xám. Lông đuôi rất ngắn giống đuôi lợn. Má có túi, chai mông lớn. Đuôi thường mập phần gốc, kém nửa chiều dài thân nhưng dài hơn 10% chiều dài thân và dài hơn bàn chân sau.",
                    phanbo = "Trong nước: Lào Cai, Yên Bái, Sơn La, Hà Giang, Bắc Kạn, Thái Nguyên, Hoà Bình, Hà Tây, Nghệ An, Hà Tĩnh.Tuyên Quang (Na hang), Quảng Bình, (Bố Trạch, Minh Hoá),Thừa Thiên - Huế, (Bạch Mã), Gia Lai (Chư Xê, Kon Ka Kenh, Kon Cha Răng); Kontum, (Mom Ray, Sa Thầy), Đắk Lắk (Ea Sup, Yok Don), Lâm Đồng (Bảo Lộc), Tây Ninh, Đồng Nai, TP. Hồ Chí Minh. Thế giới: Nam và Đông nam Á."
                });
            }

            // ca
            else if (anm.AnimalID == "ca")
            {
                speciesList.Add(new Species
                {
                    SpeciesID = "ca01",
                    VNname = "Cá đao răng nhỏ",
                    LTname = "Pristis microdon",
                    ho = "Pristidae",
                    bo = "Pristiformes",
                    Image = "CaDaoRangNho.jfif",
                    dacdiem = "Thân hình lớn, khoẻ, kích thước lớn nhất 656cm, trung bình 500cm. Mõm kéo dài như một đao dẹt, hai bên mép đao có 17 - 22 đôi răng cưa nhỏ dài nhọn, chiều dài mỗi răng cưa 30 - 40mm, răng cưa mọc đến sát gốc đao. Có hai vây lưng, không có gai cứng. Khởi điểm vây lưng thứ nhất ở phía trước khởi điểm của vây bụng. Lưng màu nâu sẫm, bụng màu trắng.",
                    phanbo = "Trong nước: Vịnh Bắc Bộ (Bạch Long Vỹ), Khánh Hoà, Bình Thuận, vịnh Thái Lan. Thế giới: Trung Quốc, Inđônêxia, Thái Lan, Cămpuchia, Ôxtrâylia, Ấn Độ, Biển Đỏ, Đại Tây Dương."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "ca02",
                    VNname = "Cá ét mọi",
                    LTname = "Labeo chrysophekadion",
                    ho = "Cyprinidae",
                    bo = "Cypriniformes",
                    Image = "CaEtMoi.jfif",
                    dacdiem = "Vây lưng: 3 - 4, 15 - 17, vây ngực: 1, 9 - 14 - 17, vây bụng 1, 8, vây hậu môn: III, 3 - 5, vây trên đường bên: 38 - 39. Cá có thân thon dài, dẹt bên. Đầu nhỏ, mõm tù, đầu mõm có nhiều đốt ừng. Miệng ở phía dưới, nằm trên mặt phẳng ngang, vòng cung. Môi phát triển. Rãnh sau môi trên và môi dưới sâu và liên tục. Có hai đôi râu, râu mõm và râu mép dài bằng nhau và tương đương với đường kính mắt. Các vây đều cao, vảy tròn phủ khắp thân. Thân cá có màu đen xám ở mặt lưng, màu trắng mám ở mặt bụng. Các vây có màu đen.",
                    phanbo = "Việt Nam: vùng thượng và hạ lưu sông Đồng Nai, Sông Bé, hệ thống sông Cửu Long. Thế giới: Thái Lan, Lào, Campuchia, Indonesia."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "ca03",
                    VNname = "Cá ông chuông",
                    LTname = "Pseudorca crassidens",
                    ho = "Delphinidae",
                    bo = "Cetacea",
                    Image = "CaOngChuong.jfif",
                    dacdiem = "Có dạng cơ thể thon dài, phần trán phía trước tròn và không có mỏ làm cho phần đầu trông giống quả chuông. Vây lưng mảnh dẻ, chóp hơi tròn và cong về phía sau như lưỡi liềm. Vây bơi có bìa mép lượn cong; có lẽ đây là đặc tính khác biệt nhất của loài này. Loài có kích thước lớn, con trưởng thành có thể đạt tới 5 - 6 mét, toàn thân có màu xám đến đen, giữa đầu và ngực như có một giải màu xám trắng phân cách, đôi khi trên đầu có những vùng màu nhạt hơn. Mỗi hàm có từ 7 - 12 đôi răng lớn hình nón, tiết diện ngang của răng hơi tròn.",
                    phanbo = "Trong nước: Vịnh Hạ Long, Khánh Hoà (có mẫu ở Bảo tàng Hải dương Họ:c Nha Trang), Côn Đảo. Thế giới: Vùng biển ấm nhiệt đới, gần vùng xích đạo."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "ca04",
                    VNname = "Cá đường",
                    LTname = "Cosmochilus harmandi",
                    ho = "Cyprinidae",
                    bo = "Cypriniformes",
                    Image = "CaDuong.jfif",
                    dacdiem = "Là loài cá lớn nhất trong họ cá Đù, mõm nhọn, miệng rộng, hàm dưới đạt tới quá phía sau mắt. Răng khoẻ ở cả hai hàm, không có răng nanh. Bóng hơi hình củ cà rốt với một đôi nhánh phụ chạy từ phía sau lên phía trước. Vây đuôi nhọn. Đường bên chạy đến tận cùng của vây đuôi. Phần đầu và lưng màu xanh xám, hông mầu vàng, vàng da cam, nhạt hơn ở bụng. Đường bên màu vàng. Các vây lẻ và vây bụng màu nâu vàng đến vàng da cam nhạt, vây ngực màu nâu có chấm đen ở gốc.",
                    phanbo = "Trong nước: Các tỉnh ven biển Việt Nam. Chủ yếu vịnh Bắc bộ, Đông và Tây Nam bộ. Thế giới: Tây Thái Bình Dương (từ Pakixtan dọc theo bờ Ấn Độ và Xri Lanca đến Malaixia, Indonesia (Sumatra, Borneo), Trung Quốc), Đại Tây Dương, Ấn Độ."
                });
            }

            // cho
            else if (anm.AnimalID == "cho")
            {

                speciesList.Add(new Species
                {
                    SpeciesID = "cho01",
                    VNname = "Chó Shiba",
                    LTname = "Shiba Inu",
                    ho = "Canidae",
                    bo = "Carnivora",
                    Image = "doge.webp",
                    dacdiem = "Khung hình của Shiba nhỏ gọn với cơ bắp phát triển tốt. Con đực có chiều cao từ 35 đến 43 cm (14 đến 17 in). Đối với con cái là 33 đến 41 cm (13 đến 16 in). Trọng lượng trung bình ở kích thước tương thích là khoảng 10 kg (22 lb) đối với con đực và 8 kg (18 lb) đối với con cái. Xương vừa phải. Lớp lông: Có hai lớp lông với lớp ngoài cứng và thẳng cùng một lớp trong mềm mại và dày. Lông mao ngắn và thậm chí trên mặt, tai và chân giống cáo. Lông bảo vệ xù ra khỏi cơ thể chiều dài khoảng 4 đến 5 cm (1+1⁄2 đến 2 in) ở vai. Lông đuôi hơi dài và xù ra. Shiba có thể có màu đỏ, đen và nâu, hoặc màu vừng (màu đỏ với những sợi ngã sang đen), với một lớp lông lót màu kem, màu da bò, hoặc màu xám. Nó cũng có thể có màu trắng (kem), mặc dù màu này được xem là một lỗi nghiêm trọng bởi Hiệp hội chó giống Mỹ và không bao giờ được nuôi trong các chương trình. Ngược lại, một lớp lông màu trắng (kem) là hoàn toàn chấp nhận được theo tiêu chuẩn giống chó Anh. Urajiro (màu kem trắng) có ở các bộ phận sau trên tất cả các vùng lông: ở hai bên mõm, trên má, bên trong tai, trên hàm dưới và ở chỗ cổ họng, bên trong chân, trên bụng, xung quanh các lỗ thông hơi và phía vùng bụng của đuôi. Màu đỏ: thương ở trên cổ họng, chóp ngực và ngực. Đen và màu vừng: thường là một dấu tam giác trên cả hai bên của chóp ngực.",
                    phanbo = "Năm 1954, một gia đình phục vụ vũ trang mang con Shiba Inu đầu tiên đến Hoa Kỳ. Vào năm 1979, lứa đầu tiên được ghi nhận sinh ra tại Hoa Kỳ. Shiba đã được công nhận bởi Hiệp hội chó giống Mỹ vào năm 1992 và được bổ sung vào nhóm AKC (nhóm phi thể thao) vào năm 1993. Giống bây giờ chủ yếu được nuôi như thú cưng ở Nhật Bản và các nước khác."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "cho02",
                    VNname = "Chó pug",
                    LTname = "Pug",
                    ho = "Canidae",
                    bo = "Carnivora",
                    Image = "pug.webp",
                    dacdiem = "Chó Pug có thân hình chắc lẳn, gọn gàng, Cơ thể của loài chó này được coi là cân đối nếu chiều cao tính đến vai gần tương đương với chiều dài từ vai đến hết mông. Chó chuẩn có hình dáng giống quả lê, phần vai rông hơn phần hông. Bộ lông ngắn, mềm mại, dễ chải có màu nâu, trắng, vện và trộn lẫn giữa chúng. Da chúng mềm mại, tạo cảm giác dễ chịu khi vuốt ve. Chúng có đôi mắt tròn lồi màu sẫm và hàm dưới hơi trề ra rất ngộ. Đuôi thẳng hoặc xoắn. Chăm sóc thích hợp của các nếp nhăn là quan trọng nhất.",
                    phanbo = "Pug nguồn gốc từ châu Á khoảng 400 trước Công nguyên. Tuy vậy hiện nay nguồn gốc của Pug vẫn còn là vấn đề tranh cãi. Một số chuyên gia cho rằng Pug có gốc từ vùng Viễn Đông được du nhập bởi các nhà lái buôn Hà Lan. Họ cũng cho rằng có thể đây là một nhánh của giống chó Bắc Kinh lông ngắn. Tuy vậy có ý kiến khác cho rằng Pug là kết quả của việc lai tạo giống chó Bulldog bé. Từ thế kỷ XVI, Pug trở thành loài chó cảnh yêu thích và thời thượng nhất trong các triều đình châu Âu, đạt đến đỉnh cao vào thời kỳ Victoria. Pug là loài chó yêu thích trong các đền chùa tại Tây Tạng, sau đó chúng được nhập vào Nhật Bản. Tiếp tục cuộc chu du đến châu Âu, loài chó này nhanh chóng trở thành vật nuôi trong hoàng gia của nhiều quốc gia và thậm chí đã trở thành loại chó chính thức của Hoàng gia Hà Lan. Chính chú chó Pug nhỏ bé đã cứu mạng hoàng tử William khi đánh động cho chủ biết về cuộc tấn công vào năm 1572. Khi người Anh xâm chiếm hoàng cung tại Bắc Kinh, họ tìm thấy ở đây một số chó Pug và chó Bắc Kinh và mang chúng trở về Anh quốc. Liên đoàn chó Mỹ đã chính thức công nhận loại chó Pug vào năm 2021."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "cho03",
                    VNname = "Chó lạp xưởng",
                    LTname = "Dachshund ",
                    ho = "Canidae",
                    bo = "Carnivora",
                    Image = "cholx.jpg",
                    dacdiem = "Chúng là giống chó thân dài, ngực nở, bụng hóp, hoạt bát, rắn chắc với tứ chi rất ngắn. Chúng tạo cho giống chó này một dáng vẻ độc đáo và đầy chất thông thái. Đầu thuôn dài, mắt hơi lồi, mõm dài với bộ hàm khoẻ mạnh cùng những chiếc răng vô cùng sắc bén. Mắt có hình ôvan, màu đỏ sẫm hoặc nâu đen, rất năng động và thân thiện. Tai khá linh hoạt và luôn buông lơ lửng ở hai bên má. Lông của giống chó lông ngắn mượt mà, bóng bẩy và đồng nhất.",
                    phanbo = "Dachshund là giống chó có nguồn gốc từ Đức, được biết đến như một loài chó săn nhỏ. Xuất hiện từ thế kỷ 15, nhưng giống chó này bắt đầu phát triển mạnh ở Đức vào thế kỷ thứ 17. Đến thế kỷ 19, Dachshund được đưa đến Hoa Kỳ và trở thành giống chó phổ biến cho đến ngày này. Tuy trở thành một loại thú cưng, không phải là một thợ săn, nhưng Dachshund vẫn duy trì được các đặc tính độc lập, can đảm và dũng cảm, rất cuốn hút và đem lại cảm giác vui tươi."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "cho04",
                    VNname = "Nasus",
                    LTname = "Nhà Thông Thái Sa Mạc",
                    ho = "Canidae",
                    bo = "Carnivora",
                    Image = "Nasus.webp",
                    dacdiem = "Nasus là Thể Thăng Hoa oai vệ mang đầu chó rừng của Shurima cổ, một hình mẫu anh hùng được dân sa mạc coi như bán thần. Vô cùng thông thái, ông là người canh giữ tri thức và là chiến thuật gia có một không hai. Trí tuệ của ông đã dẫn dắt đế chế đến với sự huy hoàng trong nhiều thế kỷ. Sau khi nó sụp đổ, ông tự lưu đày bản thân và nhòa dần theo dòng truyền thuyết. Giờ, khi thành phố cổ trỗi dậy thêm lần nữa, ông đã trở lại, kiên quyết đảm bảo nó sẽ không bao giờ suy tàn.",
                    phanbo = "Shurima từng là một đế chế hùng mạnh trải dài đến tận cùng phía nam lục địa. Sau một kỷ nguyên phát triển và thịnh vượng, vị hoàng đế cuối cùng đã bị bạn thân nhất phản bội, đế chế rơi vào suy tàn. Kinh đô huy hoàng của nó bị phá hủy trong một cơn đại địa chấn, để lại không gì khác ngoài đống đổ nát hoang tàn. Cư dân tan tác mỗi nơi một ngả, các thành phố dần bị cát bụi nuốt chửng. Giờ, Shurima là một sa mạc khô cằn, nơi chỉ những ai mạnh mẽ nhất mới đủ sức sống sót, cố bám trụ lấy vài ốc đảo ít ỏi và dải đất màu mỡ quanh bờ biển còn sót lại. Một thiên niên kỷ sau sự sụp đổ của Shurima, những truyện kể về thủ phủ tráng lệ và những đĩa mặt trời lấp lánh đã trở thành thần thoại và thánh kinh lưu truyền giữa các hậu duệ của đế chế. Hầu hết cư dân Shurima giờ là những bộ tộc nhỏ co cụm quanh nguồn nước hoặc tàn tích của các thành phố cổ để tôn sùng vinh quang quá khứ. Có những kẻ săn lùng của cải chôn giấu nơi các di chỉ, hoặc bán mình là lính đánh thuê chiến đấu cho các ông chủ giàu có trước khi hòa tan vào cát bụi. Những kẻ khác thì cố quên đi quá khứ, hướng đến tương lai khi trao đổi hàng hóa cùng các quốc gia bên kia đại dương. Nhưng thần thoại về Shurima cổ xưa không dễ dàng ngủ yên, nó đang trở mình lần nữa. Những cơn gió thì thầm thổi ra từ trái tim của sa mạc kể tới những thành phố trỗi dậy từ lòng đất, tới một chiến binh hoàng kim dẫn đầu một đoàn quân cát diễu hành. Tin đồn lan khắp chốn về sự tái sinh của các anh hùng cổ xưa, về một cuộc chiến giữa các vị thần sẽ làm rung chuyển căn nguyên của thế giới. Kinh đô Shurima đã trở lại, và không gì sẽ có thể sánh được với nó."
                });
            }

            // cho
            else if (anm.AnimalID == "sanho")
            {

                speciesList.Add(new Species
                {
                    SpeciesID = "sanho1",
                    VNname = "SAN HÔ CÀNH ĐA MI",
                    LTname = "Pocillopora damicornis",
                    ho = "Pocilloporidae",
                    bo = "Scleractinia",
                    Image = "SanHoCanhDaMi",
                    dacdiem = "Tập đoàn dạng bụi cây hình thái biến đổi phức tạp theo môi trường sống: khi thì dạng bán cầu nhỏ với cành mập ở nơi sóng mạnh, khi thì dạng bụi không quy luật với cành trục và nhánh mảnh ở nơi ít sóng hoặc biển sâu. Loài này được phân biệt với loài khác trong giống ở chỗ không có mụn cơm (verrucae) thực thụ. Cành chính hoặc có các polyp xếp dính liền nhau (cerioid) hoặc có các cành phụ không phát triển xếp không quy luật được xem như các mụn cơm. Lỗ miệng có đường kính 0,7 - 1,5mm. Mẫu sống thường đồng màu hồng, tím, đỏ hoặc vàng ngả xanh; đỉnh cành thường có màu nhạt hơn.",
                    phanbo = "Trong nước: Trên các rạn san hô từ Quảng Trị (đảo Cồn Cỏ) đến Bà Rịa - Vũng Tàu (Côn Đảo), các đảo Tây Nam Bộ (Thổ Chu, Nam Du, An Thới, Phú Quốc), quần đảo Trường Sa và Hoàng Sa. Thế giới: Vùng nhiệt đới Ấn Độ Dương và Thái Bình Dương."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "sanho2",
                    VNname = "SAN HÔ ĐỎ NHẬT BẢN",
                    LTname = "Corallium japonicus",
                    ho = "Corallidae",
                    bo = "Gorgonaria",
                    Image = "SanDoNhatBan.jfif",
                    dacdiem = "Tập đoàn dạng quạt ít phân nhánh, các nhánh nằm trên một mặt phẳng. Nhánh cuối cùng nhô ra phía trước, ngắn và có gai. Số lượng polyp ít, thường có ở mặt trước và xếp theo nhiều hàng, đường kính 0,7mm. Lớp vỏ mỏng, có những núm nhỏ (mụn cơm) phân bố rải rác. Trâm xương có 8 cạnh, đường kính 0,05mm. Một số ít có dạng chữ thập nhỏ hơn. Trục có sọc nhỏ và có lỗ nhỏ dưới mỗi polyp. Trục màu đỏ thẫm có lõi giữa màu trắng, cuối các nhánh thường có màu sáng hơn tới trắng.",
                    phanbo = "Trong nước: Vùng nước sâu biển khơi miền Trung và nam quần đảo Trường Sa. Thế giới: Vùng Ấn Độ - Thái Bình Dương."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "sanho3",
                    VNname = "SAN HÔ CÀNH ĐỈNH NHỌN",
                    LTname = "Seriatopora hystrix ",
                    ho = "Pocilloporidae",
                    bo = "Scleractinia",
                    Image = "SanHoCanhDinhNhon.jfif",
                    dacdiem = "Tập đoàn dạng bụi cây rậm, hình dáng thay đổi phức tạp tuỳ theo môi trường sống. Số lượng cành nhiều, mọc khác nhau khi thì mọc nghiêng với góc 30o, khi thì đâm ngang; kích thước đường kính cành biến đổi từ 1,5-4,5 mm. Cành ngọn thường ngắn, chia 2-3, đỉnh nhọn. Polyp xếp thành 7-9 dẫy dọc các cành, miệng dạng ovan ở phần ngọn, hình tròn ở phần dưới, vành miệng hơi nhô cao, đáy sâu. Các polyp ở gần đỉnh cành có xương thành mỏng, về phía gốc có xương thành dày. Mẫu sống có màu nâu nhạt, vàng, kem, đỉnh nhọn có màu vàng nhạt hoặc trắng.",
                    phanbo = "Trong nước : Trên các rạn san hô ven bờ từ Đà Nẵng (bán đảo Sơn Trà) đến Bà Rịa - Vũng Tàu (Côn Đảo), các đảo vùng biển Tây Nam Bộ (Thổ Chu, Nam Du, An Thới), quần đảo Trường Sa và Hoàng Sa. Thế giới: Từ Biến Đỏ và bờ Đông Châu Phi ở phía Tây đến đảo Samoa và Phonix ở phía Đông; từ đảo Lord Howe (Ôxtrâylia) ở phía Nam tới quần đảo Ryukyu (Nhật Bản) ở phía Bắc."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "sanho4",
                    VNname = "SAN HÔ ĐỎ KNOI",
                    LTname = "Corallium konojci",
                    ho = "Corallidae",
                    bo = "Gorgonaria",
                    Image = "SanHoDoKnoi.jfif",
                    dacdiem = "Tập đoàn dạng quạt ít phân nhánh, các nhánh nằm trên một mặt phẳng và có mạng nối, đầu nhánh hơi phình to và ngắn. Polyp cao 2 -3mm, thường ở mặt trước, mọc dày ở cuối nhánh. Lớp vỏ dày, cứng và phẳng. Trâm xương có 6, 7, 8 cạnh hoặc cánh hoa kép, đường kính 0,09mm. Trâm xương của polyp có 6 và 8 cạnh kích thước nhỏ hơn. Trục có sọc mờ màu hơi vàng đến hơi đỏ hoặc màu trắng sữa với trung tâm hơi đỏ và hẹp.",
                    phanbo = "Trong nước : Vùng nước sâu biển khơi miền Trung, quần đảo Trường Sa. Thế giới: Vùng Ấn Độ - Thái Bình Dương."
                });
            }

            // bo
            else if (anm.AnimalID == "bo")
            {
                speciesList.Add(new Species
                {
                    SpeciesID = "bo01",
                    VNname = "Bò tót",
                    LTname = "Bos gaurus",
                    ho = "Bovidae",
                    bo = "Artiodactyla",
                    Image = "BoTot.jfif",
                    dacdiem = "Cỡ lớn trong bộ Ngón chẵn Artiodactyla, to, khoẻ. Thân dài 2,5 - 3 m. Trọng lượng 900 - 1000 kg. Đầu to, trán dẹt hơi lõm, có đốm lông trắng trên trán, đỉnh trán giữa hai sừng dô cao. Sừng to khoẻ cân đối, uốn cong lên phía trên tạo vòng cung hình bán nguyệt. Gốc sừng mầu vàng xám, mút sừng nhọn đen bóng. Lớp da ở cổ và trước ngực không tạo thành yếm. Bộ lông ngắn mềm mượt mầu nâu thẫm hoặc đen xám hơi phớt xanh bóng ở lưng. Lông ở bụng dài mầu nâu nhạt. Con cái thường có mầu hung đỏ. Mông đen, bốn chân từ khoeo trở xuống mầu trắng bẩn. Đuôi dài mầu đen.",
                    phanbo = "Trong nước: Lai Châu, Sơn La, Thanh Hoá, Nghệ An, Hà Tĩnh, Quảng Bình, Quảng Trị, Thừa Thiên - Huế, Kontum, Gia Lai, Đắk Lắk, Lâm Đồng, Đồng Nai, Bình Phước. Thế giới: Ấn Độ, Nêpan, Mianma, Trung Quốc, Lào, Cămpuchia, Thái Lan, Malaixia."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "bo02",
                    VNname = "bò xám",
                    LTname = "Bos sauveli",
                    ho = "Bovidae",
                    bo = "Artiodactyla",
                    Image = "BoXam.jfif",
                    dacdiem = "Thân cỡ lớn. Sừng to, từ gốc sừng thân sừng nghiêng về phía sau, mút sừng nhọn uốn cong về phía trước. Yếm cổ khá rộng kéo dài xuống ngang khoeo và sát đất ở những con già. Toàn thân mầu xám. Mông không trắng. Bốn chân từ khoeo trở xuống mầu trắng.",
                    phanbo = "Trong nước: Kontum, Đắk Lắk, Bình Phước. Thế giới: Đông nam Thái Lan, nam Lào và đông bắc Campuchia."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "bo03",
                    VNname = "Bò rừng",
                    LTname = "Bos javanicus",
                    ho = "Bovidae",
                    bo = "Artiodactyla",
                    Image = "BoRung.jfif",
                    dacdiem = "Thân cỡ lớn. Dài tới 2,25m, trọng lượng 600 - 800kg. Đầu nhỏ, trán không lõm sâu, đỉnh trán giữa hai sừng không tạo thành gờ cao, không có đám lông trắng bẩn. Da dưới cổ kéo dài thành yếm nhỏ giữa cổ và ngực. Sừng nhỏ hơn sừng Bò tót, gốc sừng hình trụ, chỏm sừng nhọn, uốn cong ra phía trước. Bộ lông ở lưng màu vàng tươi chuyển sang mầu xám đen ở con già. Bụng mầu sáng hơn. Phần mông có đám lông mầu trắng rất rõ. Bốn chân từ kheo trở xuống có mầu trắng. Đuôi khá dài, có lông rậm.",
                    phanbo = "Trong nước: Kontum, Đắk Lắk, Đồng Nai, Bình Phước. Thế giới: Mianma, Lào, Cămpuchia, Thái Lan, Malaixia, Inđônêxia"
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "bo04",
                    VNname = "Bò sừng xoắn",
                    LTname = "Pseudonovibos spiralis",
                    ho = "Bovidae",
                    bo = "Artiodactyla",
                    Image = "bosungxoan.jpg",
                    dacdiem = "Loài thú lớn nhưng chỉ mới thấy sừng. Các nhà khoa học xếp chúng vào họ Trâu bò Bovidae. Sau nhiều các cuộc điều tra nhưng vẫn chưa phát hiện. Hiện nay sừng của chúng được mua tại ngã ba Đông dương – Việt Nam, Lào, Campuchia và Thái Lan. Theo mô tả của những người dân sống ở những vùng có loài này phân bố thì sừng của chúng được dùng để chữa các bệnh do rắn và côn trùng cắn. Một số những báo cáo khoa học về loài này nhưng hiện nay vẫn chưa có hình ảnh hay những mô tả cụ thể về chúng.",
                    phanbo = "Năm 1964 theo báo cáo của các nhà khoa học loài này phân bố ở biên giới Đông dương giữa Việt Nam, Cambodia, Lào, Thailand và người dân Lào săn chúng ở vùng Tapur. Đây là loài mới cho khoa học vì các nghiên cứu về chúng còn rất ít do vậy chúng ta cần phải tập trung nghiên cứu sưu tầm và bảo vệ chúng."
                });
            }

            // cay.
            else if (anm.AnimalID == "cay")
            {
                speciesList.Add(new Species
                {
                    SpeciesID = "cay01",
                    VNname = "cầy gấm",
                    LTname = "Prionodon pardicolor",
                    ho = "Prionodontidae",
                    bo = "Carnivora",
                    Image = "CayGam.jfif",
                    dacdiem = "Cầy cỡ nhỏ, thân dài, đuôi dài. Bộ lông mầu vàng trắng, có nhiều đốm nâu đen từ cổ đến gốc đuôi và đùi; bốn sọc dọc từ cổ đến bả vai. Đuôi có 8 - 9 vòng đen, trắng khác với Cầy linsang chỉ 7 vòng. Phần bụng và Họng sáng trắng hơn phần lưng. Cả đực và cái đều có tuyến xạ.",
                    phanbo = "Trong nước: Nơi thu mẫu: Lào Cai, Bắc Kạn, Tuyên Quang, Thanh Hoá, Lạng Sơn, Bắc Giang, Quảng Ninh, Hoà Bình, Hà Tĩnh, Gia Lai, Lâm Đồng. Cầy gấm phân bố rộng ở Việt Nam. Thế giới: Ấn Độ, Nêpan, Mianma, Trung Quốc, Thái Lan, Inđônêxia, Lào."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "cay02",
                    VNname = "Cầy giông",
                    LTname = "Viverra zibetha",
                    ho = "Viverridae",
                    bo = "Carnivora",
                    Image = "CayGiong.jfif", 
                    dacdiem = "Chiều dài đầu thân: Con đực 790mm, con cái 770mm. Chiều dài đuôi: con đực 460, con cái 440mm. Trọng lượng: Từ 8 - 9 kg. Loài thú cỡ lớn trong họ nhà Cầy Viverridae.Bộ lông màu xám đen có 4 - 5 vạch đen bên mình, bên cổ có 3 đường chỉ đen nằm ngang, đuôi có 6 - 7 ngấn màu trắng xen đen. Miệng màu trắng. Phía sau tai có vệt màu trắng kéo xuống đến cổ. Từ sau gáy kéo xuống gốc đuôi có dải lông đen. Con đực to hơn con cái chút ít.",
                    phanbo = "Từ miền Nam Trung Quốc đến miền Đông Ấn Độ, Thái Lan, Lào, Campuchia, Malaixia, Việt Nam loài này phân bố ở các khu rừng còn tốt từ Bắc đến Nam."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "cay03",
                    VNname = "Cầy hương",
                    LTname = "Viverricula indica",
                    ho = "Viverridae",
                    bo = "Carnivora",
                    Image = "CayHuong.jfif",
                    dacdiem = "Cầy hương có kích thước nhỏ hơn cầy giông, cân nặng 2 - 4 kg, dài thân 540 - 630mm, dài đuôi 300 - 430mm. Lông màu xám bẩn. Dọc sống lưng có các vệt xám đen, hông có nhiều vệt đen mờ xếp thành hàng chạy từ vai đến mông, Đuôi dài, có 7 vòng trắng xen lẫn với 7 vòng đen. Con đực có tuyến xạ nằm giữa kẽ hai tinh hoàn.",
                    phanbo = "Trên toàn vùng Nam châu Á. Ở nước ta, cầy hương phân bố khắp các tỉnh miền núi và trung du."
                });

                speciesList.Add(new Species
                {
                    SpeciesID = "cay04",
                    VNname = "Cầy giông sọc",
                    LTname = "Viverra megaspila",
                    ho = "Viverridae",
                    bo = "Carnivora",
                    Image = "CayGiongSoc.jfif",
                    dacdiem = "Kích thước và hình dáng gần giống với Cầy giông thường, trừ các đặc điểm phân biệt sau: ở phần lưng từ ngực đến gốc đuôi và đùi sau có nhiều đốm đen lớn rõ rệt trên nền sáng, đốm đen có thể tách rời hoặc tạo thành dải. Bờm lông đen dài chạy từ cổ dọc sống lưng đến mút đuôi. Vòng đuôi bị cắt bởi bờm lông màu đen ở mặt trên thành hình bán nguyệt, rõ nhất ở vòng mầu trắng. Đuôi có 4 vòng đen, trắng ở nửa phần gốc đuôi; nửa phần mút đuôi mầu đen (không có vòng). Có tuyến xạ cạnh hậu môn.",
                    phanbo = "Trong nước: Nơi thu mẫu: Đắk Lắk, Lâm Đồng, Tây Ninh, Thành phố Hồ Chí Minh, Kiên Giang. Cầy giông sọc phân bố ở các tỉnh phía Nam. Thế giới: Mianma, Malaixia, Thái Lan."
                });
            }

            LstSpecies.ItemsSource = speciesList;
        }

        private void LstSpecies_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            Species species = (Species)LstSpecies.SelectedItem;
            Navigation.PushAsync(new PageSpeciesDetail(species));
        }
    }
}