.class public Lf0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lf0/a;


# direct methods
.method public constructor <init>(Lf0/a;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/a$a;->e:Lf0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf0/a$a;->b:I

    .line 3
    iput p2, p0, Lf0/a$a;->a:I

    .line 4
    iput p3, p0, Lf0/a$a;->c:I

    .line 5
    iput p4, p0, Lf0/a$a;->d:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/a$a;->e:Lf0/a;

    iget v1, p0, Lf0/a$a;->a:I

    iget v2, p0, Lf0/a$a;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lf0/a$a;->c:I

    iget v3, p0, Lf0/a$a;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lf0/a;->i(III)V

    return-void
.end method
