.class public Lk0/jf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jf;


# direct methods
.method public constructor <init>(Lk0/jf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jf$a;->a:Lk0/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/jf$a;->a:Lk0/jf;

    invoke-virtual {v0}, Lk0/jf;->a3()V

    return-void
.end method
