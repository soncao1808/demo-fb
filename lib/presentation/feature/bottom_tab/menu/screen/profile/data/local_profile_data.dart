import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';

class LocalProfileData {
  static UserUiModel user = UserUiModel(
    id: 12525,
    firstName: 'Hanna',
    middleName: '',
    lastName: 'Food',
    gender: GenderModel(
      gender: Gender.FEMALE,
      privacy: Privacy.PUBLIC,
    ),
    birthDay: BirthDayModel(
      day: '18/02/2002',
      privacy: Privacy.PRIVATE,
    ),
    story:
    'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam.',
    phone: PhoneModel(
      phone: '0981234567',
      privacy: Privacy.PRIVATE,
    ),
    mail: MailModel(
      mail: 'ahiah@gmail.com',
      privacy: Privacy.PUBLIC,
    ),
    address: AddressModel(
      address: 'Trên núi',
      privacy: Privacy.PRIVATE,
    ),
    currentAddress: AddressModel(
      address: 'Trên núi',
      privacy: Privacy.PRIVATE,
    ),
    hometown: AddressModel(
      address: 'Trên trời',
      privacy: Privacy.PRIVATE,
    ),
    job: JobModel(
        companyName: 'CTS',
        position: 'DEV',
        country: 'Đà Nẵng',
        startDate: '22/2/2022',
        endDate: '',
        workInHere: true,
        privacy: Privacy.PUBLIC),
    followedCount: 50,
    followerCount: 56,
    avatar: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    background: 'https://wallpapers.com/images/hd/abstract-background-6m6cjbifu3zpfv84.jpg',
  );

  static FriendUiModel friend = FriendUiModel(
    id: 12525,
    firstName: 'Hanna',
    middleName: '',
    lastName: 'Friend',
    gender: GenderModel(
      gender: Gender.MALE,
      privacy: Privacy.PUBLIC,
    ),
    birthDay: BirthDayModel(
      day: '18/02/1987',
      privacy: Privacy.PUBLIC,
    ),
    story:
    'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam.',
    phone: PhoneModel(
      phone: '0981234567',
      privacy: Privacy.PUBLIC,
    ),
    mail: MailModel(
      mail: 'ahiah@gmail.com',
      privacy: Privacy.PUBLIC,
    ),
    address: AddressModel(
      address: 'Trên núi',
      privacy: Privacy.PUBLIC,
    ),
    currentAddress: AddressModel(
      address: 'Trên núi',
      privacy: Privacy.PUBLIC,
    ),
    hometown: AddressModel(
      address: 'Trên trời',
      privacy: Privacy.PUBLIC,
    ),
    job: JobModel(
        companyName: 'CTS',
        position: 'DEV',
        country: 'Đà Nẵng',
        startDate: '22/2/2022',
        endDate: '',
        workInHere: true,
        privacy: Privacy.PUBLIC),
    followedCount: 50,
    followerCount: 56,
    isFollowed: false,
    isFriend: false,
    avatar: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    background: 'https://wallpapers.com/images/hd/abstract-background-6m6cjbifu3zpfv84.jpg',
  );

  static List<FriendUiModel> friends = const [
    FriendUiModel(
      id: 1,
      firstName: 'Hi',
      lastName: 'An1',
      isFollowed: false,
      isFriend: true,
      followerCount: 69,
      avatar:
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    ),
    FriendUiModel(
      id: 2,
      firstName: 'Hi',
      lastName: 'An2',
      isFollowed: true,
      followerCount: 69,
      isFriend: false,
      avatar:
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    ),
    FriendUiModel(
      id: 3,
      firstName: 'Hi',
      lastName: 'An3',
      isFollowed: false,
      isFriend: false,
      followerCount: 69,
      avatar:
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    ),
    FriendUiModel(
      id: 4,
      firstName: 'Hi',
      lastName: 'An4',
      isFollowed: true,
      isFriend: false,
      followerCount: 69,
      avatar:
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    ),
    FriendUiModel(
      id: 5,
      firstName: 'Hi',
      lastName: 'An5',
      isFollowed: true,
      isFriend: true,
      followerCount: 69,
      avatar:
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
    ),
  ];

  static List<Post> myPosts = <Post>[
    const Post(
      id: 1,
      name:
      'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam',
      user: UserPost(
        avatar: 'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        name: "Test Name 1",
        isMe: true,
      ),
      likeCount: 1,
      shareCount: 1,
      commentCount: 1,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/31/14/55/nothing-1785760_1280.jpg',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      contentType: 'image',
    ),
    const Post(
      id: 2,
      name:
      'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam',
      user: UserPost(
        avatar: 'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        name: "Test Name 2",
        isMe: true,
      ),
      likeCount: 2,
      shareCount: 2,
      commentCount: 2,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/31/14/55/nothing-1785760_1280.jpg',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      contentType: 'video',
    ),
  ];

  static List<Post> friendPosts = <Post>[
    const Post(
      id: 1,
      name:
      'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam',
      user: UserPost(
        avatar: 'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        name: "Test Name 1",
      ),
      likeCount: 1,
      shareCount: 1,
      commentCount: 1,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/31/14/55/nothing-1785760_1280.jpg',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      contentType: 'image',
    ),
    const Post(
      id: 2,
      name:
      'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam',
      user: UserPost(
        avatar: 'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        name: "Test Name 2",
      ),
      likeCount: 2,
      shareCount: 2,
      commentCount: 2,
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/31/14/55/nothing-1785760_1280.jpg',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      contentType: 'video',
    ),
  ];
}
