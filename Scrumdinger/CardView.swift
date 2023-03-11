import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var dailyScrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(scrum: dailyScrum)
            .background(dailyScrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
