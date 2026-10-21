.class Landroid/view/LayoutInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryMerger"
.end annotation


# instance fields
.field private final mF1:Landroid/view/LayoutInflater$Factory;

.field private final mF12:Landroid/view/LayoutInflater$Factory2;

.field private final mF2:Landroid/view/LayoutInflater$Factory;

.field private final mF22:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF1:Landroid/view/LayoutInflater$Factory;

    .line 5
    .line 6
    iput-object p3, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF2:Landroid/view/LayoutInflater$Factory;

    .line 7
    .line 8
    iput-object p2, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF12:Landroid/view/LayoutInflater$Factory2;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF22:Landroid/view/LayoutInflater$Factory2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF12:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF1:Landroid/view/LayoutInflater$Factory;

    .line 4
    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF22:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF2:Landroid/view/LayoutInflater$Factory;

    .line 6
    invoke-interface {p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF1:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF2:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
