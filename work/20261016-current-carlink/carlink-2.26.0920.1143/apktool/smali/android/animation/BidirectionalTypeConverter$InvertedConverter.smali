.class Landroid/animation/BidirectionalTypeConverter$InvertedConverter;
.super Landroid/animation/BidirectionalTypeConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/BidirectionalTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvertedConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/BidirectionalTypeConverter<",
        "TFrom;TTo;>;"
    }
.end annotation


# instance fields
.field private mConverter:Landroid/animation/BidirectionalTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/BidirectionalTypeConverter<",
            "TTo;TFrom;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/animation/BidirectionalTypeConverter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/BidirectionalTypeConverter<",
            "TTo;TFrom;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/animation/TypeConverter;->getTargetType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/animation/TypeConverter;->getSourceType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Landroid/animation/BidirectionalTypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)TTo;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;)TFrom;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;->mConverter:Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
