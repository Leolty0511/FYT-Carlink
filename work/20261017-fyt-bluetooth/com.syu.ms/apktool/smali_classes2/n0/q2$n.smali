.class public Ln0/q2$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/q2;->T3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ln0/q2;


# direct methods
.method public constructor <init>(Ln0/q2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/q2$n;->b:Ln0/q2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x18

    .line 2
    iput p1, p0, Ln0/q2$n;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ln0/q2$n;->a:I

    return v0
.end method

.method public b(II)Ljava/lang/String;
    .locals 1

    const-string p2, "ui/vol/tzy_htop/"

    const/16 v0, 0x780

    if-lt p1, v0, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "2000/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x26

    .line 2
    iput p2, p0, Ln0/q2$n;->a:I

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "1280/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1c

    .line 4
    iput p2, p0, Ln0/q2$n;->a:I

    :goto_0
    return-object p1
.end method
