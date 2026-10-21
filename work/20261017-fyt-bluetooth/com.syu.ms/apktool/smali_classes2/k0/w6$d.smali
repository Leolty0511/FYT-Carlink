.class public Lk0/w6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w6;


# direct methods
.method public constructor <init>(Lk0/w6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w6$d;->a:Lk0/w6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/w6$d;->a:Lk0/w6;

    invoke-static {v0}, Lk0/w6;->j3(Lk0/w6;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/w6$d;->a:Lk0/w6;

    const/16 v1, 0x8

    iput-byte v1, v0, Lk0/w6;->t:B

    return-void
.end method
