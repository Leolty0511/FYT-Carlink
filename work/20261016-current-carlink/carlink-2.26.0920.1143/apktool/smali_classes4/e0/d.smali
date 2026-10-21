.class public final Le0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# instance fields
.field public final a:Le0/g;

.field public final b:Z

.field public final c:Lz/l;


# direct methods
.method public constructor <init>(Le0/f;Lz/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/d;->a:Le0/g;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Le0/d;->b:Z

    .line 8
    .line 9
    iput-object p2, p0, Le0/d;->c:Lz/l;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Le0/c;

    invoke-direct {v0, p0}, Le0/c;-><init>(Le0/d;)V

    return-object v0
.end method
