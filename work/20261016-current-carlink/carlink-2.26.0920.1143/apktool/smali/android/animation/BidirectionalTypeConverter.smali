.class public abstract Landroid/animation/BidirectionalTypeConverter;
.super Landroid/animation/TypeConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/BidirectionalTypeConverter$InvertedConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/TypeConverter<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field private mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public abstract convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation
.end method

.method public invert()Landroid/animation/BidirectionalTypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/animation/BidirectionalTypeConverter<",
            "TV;TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/animation/BidirectionalTypeConverter$InvertedConverter;-><init>(Landroid/animation/BidirectionalTypeConverter;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroid/animation/BidirectionalTypeConverter;

    .line 13
    .line 14
    return-object v0
.end method
