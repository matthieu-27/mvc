package fr.fms.mvc.entities;

//#region Imports
import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
//#endregion

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Article implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;
  private String brand;
  private String description;
  private double price;

  // #region Constructors

  public Article(String brand, String description, double price) {
    this.brand = brand;
    this.description = description;
    this.price = price;
  }

  // #endregion

  @Override
  public String toString() {
    return "Article [id=" + this.id + ", description=" + this.description + ", brand=" + this.brand + ", price="
        + this.price + "]";
  }

  // #region Getter & Setter

  public long getId() {
    return this.id;
  }

  public String getBrand() {
    return this.brand;
  }

  public void setBrand(String value) {
    this.brand = value;
  }

  public String getDescription() {
    return this.description;
  }

  public void setDescription(String value) {
    this.description = value;
  }

  public double getPrice() {
    return this.price;
  }

  public void setPrice(double value) {
    this.price = value;
  }

  // #endregion

}