.class public final Landroid/content/Intent$FilterComparison;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterComparison"
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->filterHashCode()I

    move-result p1

    iput p1, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/content/Intent$FilterComparison;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/content/Intent$FilterComparison;

    iget-object p1, p1, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    return v0
.end method
