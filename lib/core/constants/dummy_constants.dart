class UserDetails {
  final String name;
  final String profile;
  final String lastMessage;
  final bool isOnline;
  final int unReadMessagesCount;

  UserDetails(
      {required this.name,
      required this.profile,
      required this.lastMessage,
      required this.isOnline,
      required this.unReadMessagesCount});
}

List<UserDetails> userList = [
  UserDetails(
      name: "Saleem",
      profile:
          "https://images.pexels.com/photos/20254108/pexels-photo-20254108/free-photo-of-man-in-brown-turtleneck-sweater-and-black-denim-jacket.jpeg?auto=compress&cs=tinysrgb&w=600",
      lastMessage: "Where are you going",
      isOnline: false,
      unReadMessagesCount: 0),
  UserDetails(
      name: "Ilyas",
      profile:
          "https://images.pexels.com/photos/20251181/pexels-photo-20251181/free-photo-of-man-with-hand-on-mouth.jpeg?auto=compress&cs=tinysrgb&w=600",
      lastMessage: "2 new messages",
      isOnline: false,
      unReadMessagesCount: 2),
  UserDetails(
      name: "Anu",
      profile:
          "https://images.pexels.com/photos/15202110/pexels-photo-15202110/free-photo-of-woman-in-hat-and-white-dress-on-field.jpeg?auto=compress&cs=tinysrgb&w=600",
      lastMessage: "2 new messages",
      isOnline: false,
      unReadMessagesCount: 2),
  UserDetails(
      name: "Shahul",
      profile:
          "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600",
      lastMessage: "Where were you last day",
      isOnline: false,
      unReadMessagesCount: 0),
  UserDetails(
      name: "Mammotty",
      profile:
          "https://imgs.search.brave.com/SWgIDUb1pmdDmOEj29c73bOo9q0hM2wSOrT81Bgk_WA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudG9paW1nLmNv/bS90aHVtYi9tc2lk/LTEwNjMyNjkxNCxp/bWdzaXplLTQ0NTU2/LHdpZHRoLTY0MSxy/ZXNpemVtb2RlLTQv/MTA2MzI2OTE0Lmpw/Zw",
      lastMessage: "2 new messages",
      isOnline: false,
      unReadMessagesCount: 2),
  UserDetails(
      name: "Mohanlal",
      profile:
          "https://imgs.search.brave.com/0RCqThpQ_-IGkXPWPNzjf1MezvFIJbAJS2ZdCopHRTQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDM5OTQx/MjIuanBn",
      lastMessage: "2 new messages",
      isOnline: false,
      unReadMessagesCount: 2),
];
