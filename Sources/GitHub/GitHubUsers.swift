/*
 Copyright 2018-present the Material Foundation authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

extension GitHub {
  public struct User: GitHubObject {
    public typealias JsonFormat = [String: Any]
    public init(json: JsonFormat) {
      self.json = json
    }
    private let json: JsonFormat

    public var id: Int? { get { return json["id"] as? Int } }
    public var name: String? { get { return json["name"] as? String } }
    public var login: String? { get { return json["login"] as? String } }
  }
}
