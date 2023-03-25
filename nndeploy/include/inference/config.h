
#ifndef _NNDEPLOY_INCLUDE_INFERENCE_CONFIG_H_
#define _NNDEPLOY_INCLUDE_INFERENCE_CONFIG_H_

#include "nndeploy/include/base/basic.h"
#include "nndeploy/include/base/status.h"
#include "nndeploy/include/base/value.h"

namespace nndeploy {
namespace inference {

class DefaultConfigImpl {
 public:
  DefaultConfigImpl();
  virtual ~DefaultConfigImpl();

  base::Status jsonToDefaultConfig(const std::string &json,
                                   bool is_path = true);

  virtual base::Status set(const std::string &key, const base::Value &value);

  virtual base::Status get(const std::string &key, base::Value &value);

  base::InferenceType model_type_;
  bool is_path_ = true;
  std::vector<std::string> model_value_;
  EncryptType is_encrypt_ = kEncryptTypeNone;
  std::string license_;
};

class ConfigCreator {
 public:
  virtual ~ConfigCreator(){};
  virtual DefaultConfigImpl *createConfig() = 0;
};

template <typename T>
class TypeConfigCreator : public ConfigCreator {
  virtual DefaultConfigImpl *createConfig() { return new T(); }
};

std::map<base::InferenceType, std::shared_ptr<ConfigCreator>>
    &getGlobalConfigCreatorMap();

template <typename T>
class TypeConfigRegister {
 public:
  explicit TypeConfigRegister(base::InferenceType type) {
    getGlobalConfigCreatorMap()[type] = std::shared_ptr<T>(new T());
  }
};

DefaultConfigImpl *createConfig(base::InferenceType type);

class Config {
 public:
  explicit Config(base::InferenceType type);
  virtual ~Config();

  base::Status jsonToDefaultConfig(const std::string &json,
                                   bool is_path = true);

  base::Status set(const std::string &key, const base::Value &value);

  base::Status get(const std::string &key, base::Value &value);

  DefaultConfigImpl *config_impl_;

  base::InferenceType type_;
};

}  // namespace inference
}  // namespace nndeploy

#endif
