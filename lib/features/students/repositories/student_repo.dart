import 'package:flutter_teacher_dashboard_app/features/students/models/student.dart';

const Map<String, dynamic> allStudentsSampleResponseJSON = {
  'students': [
    {
      'id': 1,
      'firstName': 'Arvin',
      'middleName': 'M.',
      'lastName': 'Bareng',
      'imageURL': 'assets/images/sample_pic_01.jpg',
      'age': 25,
      'course': 'BSCS',
      'year': 4,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'CS 200', 'grade': 2.00},
        {'title': 'CS 420', 'grade': 3.00},
        {'title': 'CS 690', 'grade': 2.25},
        {'title': 'CS 100', 'grade': 2.00},
        {'title': 'MATH 131', 'grade': 1.00},
      ]
    },
    {
      'id': 2,
      'firstName': 'Jove',
      'middleName': '',
      'lastName': 'Camomot',
      'imageURL': 'assets/images/sample_pic_02.jpg',
      'age': 27,
      'course': 'ABEL',
      'year': 1,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'CS 200', 'grade': 2.00},
        {'title': 'CS 420', 'grade': 3.00},
        {'title': 'CS 690', 'grade': 2.25},
        {'title': 'CS 100', 'grade': 2.00},
        {'title': 'MATH 131', 'grade': 1.00},
      ]
    },
    {
      'id': 3,
      'firstName': 'Stevene',
      'middleName': '',
      'lastName': 'Suarez',
      'imageURL': 'assets/images/sample_pic_03.5.jpg',
      'age': 22,
      'course': 'BSHM',
      'year': 5,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 4,
      'firstName': 'Christofer Jon',
      'middleName': '',
      'lastName': 'Quinto',
      'imageURL': 'assets/images/sample_pic_03.jpg',
      'age': 30,
      'course': 'BSIT',
      'year': 2,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 5,
      'firstName': 'Cliff',
      'middleName': '',
      'lastName': 'Buque',
      'imageURL': 'assets/images/sample_pic_04.jpg',
      'age': 26,
      'course': 'BSCS',
      'year': 4,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 6,
      'firstName': 'Elonah Jane',
      'middleName': '',
      'lastName': 'L.',
      'imageURL': 'assets/images/sample_pic_05.jpg',
      'age': 26,
      'course': 'BSCS',
      'year': 4,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 7,
      'firstName': 'John Richard',
      'middleName': '',
      'lastName': 'Oplado',
      'imageURL': 'assets/images/sample_pic_06.jpg',
      'age': 33,
      'course': 'BSCS',
      'year': 5,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 8,
      'firstName': 'Jullicer',
      'middleName': '',
      'lastName': 'Dico',
      'imageURL': 'assets/images/sample_pic_07.jpg',
      'age': 23,
      'course': 'BSCS',
      'year': 3,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 9,
      'firstName': 'John Anthony',
      'middleName': '',
      'lastName': 'Otayco',
      'imageURL': 'assets/images/sample_pic_08.jpg',
      'age': 25,
      'course': 'BSIT',
      'year': 5,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
    {
      'id': 10,
      'firstName': 'Sarahjane',
      'middleName': '',
      'lastName': 'Soluga-ol',
      'imageURL': 'assets/images/sample_pic_09.jpg',
      'age': 25,
      'course': 'BSIT',
      'year': 5,
      'subjects': [
        {'title': 'CS 101', 'grade': 1.00},
        {'title': 'HM 100', 'grade': 1.00},
        {'title': 'HM 400', 'grade': 2.5},
        {'title': 'ENG 100', 'grade': 1.25},
        {'title': 'PSYCH 100', 'grade': 2.00},
        {'title': 'MATH 100', 'grade': 1.75},
      ]
    },
  ]
};

class StudentRepo {
  Future<List<Student>> getAllStudents() async {
    final List<Map<String, dynamic>> studentsJSON =
        allStudentsSampleResponseJSON['students'];
    return studentsJSON.map((student) {
      return Student.fromJson(student);
    }).toList();
  }

  Future<List<Student>> searchStudent({required String searchTerm}) async {
    final List<Map<String, dynamic>> studentsJSON =
        allStudentsSampleResponseJSON['students'];

    if (searchTerm.isEmpty) {
      return studentsJSON.map((student) {
        return Student.fromJson(student);
      }).toList();
    }

    final filteredStudent = studentsJSON
        .where((student) => (student['firstName']
                .toLowerCase()
                .contains(searchTerm.toLowerCase()) ||
            student['lastName']
                .toLowerCase()
                .contains(searchTerm.toLowerCase())))
        .toList();
    if (filteredStudent.isNotEmpty) {
      return filteredStudent.map((student) {
        return Student.fromJson(student);
      }).toList();
    }
    return [];
  }
}
