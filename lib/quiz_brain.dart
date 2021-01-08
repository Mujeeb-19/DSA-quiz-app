import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        '1.Linked lists, stacks, queues and binary trees are examples of dynamic data structures.',
        true),
    Question(
        '2.A self-referential structure contains a pointer member that points to a structure of the same structure type. For example, the following definition of structure node.',
        true),
    Question(
        '	3.Creating and maintaining dynamic data structures requires dynamic memory allocation—the ability for a program to obtain more memory space at execution time to hold new nodes, and to release space no longer needed.',
        true),
    Question('4.Function malloc returns a pointer of type void * to the memory it allocates. If it is unable to allocate memory, it returns a NULL pointer.', true),
    Question('5.Function free reallocates memory. It takes a number of bytes as an argument and frees that much space in memory.', false),
    Question('6.A linked list is a linear collection of self-referential structures, called nodes, connected by pointer links—hence, the term "linked" list.', true),
    Question(
        '7.Arrays are dynamic, so the length of an array can increase or decrease as necessary. An array is appropriate when the number of data elements to be represented in the data structure is unpredictable.',
        false),
    Question(
        '8.Linked list nodes are normally stored contiguously in memory.',
        false),
    Question(
        '9.A predicate function is a function which does not alter the object it is performed on. A function isEmpty, which tests whether a linked list has any elements in it, is an example of a predicate function.',
        true),
    Question(
        '	10.A stack is a linked-list that can be accessed from either end',
        false),
    Question('11.push is used to place elements on the bottom of a stack and pop is used to remove elements from the top of a stack.', false),
    Question(
        '12.Queue nodes are removed only from the front (head) of a queue and are inserted only at the back (tail) of the queue.',
        true),
    Question(
        '	13.A tree is an example of a linear data structure.',
        false), Question(
        '	14.A node with no children is called a leaf node',
        true), Question(
        '	15.A binary search tree (with no duplicate node values) has the characteristic that the values in any left subtree are less than or equal to the value in its parent node, and the values in any right subtree are greater than the value in its parent node.',
        true), Question(
        '	16.The following are the steps for a postorder traversal of a tree Traverse the left subtree postOrder Traverse the right subtree postOrder Process the value in the node.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      // Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  // Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
