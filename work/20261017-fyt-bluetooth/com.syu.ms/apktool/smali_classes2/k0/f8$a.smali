.class public Lk0/f8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/f8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/f8;


# direct methods
.method public constructor <init>(Lk0/f8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/f8$a;->a:Lk0/f8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/f8$a;->a:Lk0/f8;

    invoke-static {v0}, Lk0/f8;->p3(Lk0/f8;)V

    return-void
.end method
