.class public final Lcom/android/internal/os/BatteryStatsImpl$j$a;
.super Landroid/os/BatteryStats$Uid$Pkg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$j$a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$j$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/android/internal/os/BatteryStatsImpl$j;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->f:Lcom/android/internal/os/BatteryStatsImpl$j;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->e:Ljava/util/HashMap;

    .line 3
    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl$j;->y:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->a:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->c:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->d:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :goto_0
    if-ge v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;-><init>(Lcom/android/internal/os/BatteryStatsImpl$j$a;)V

    .line 9
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->b(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$j$a$a;->c(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getServiceStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg$Serv;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public getWakeups(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->c:I

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->a:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->b:I

    :goto_0
    sub-int p1, v0, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/internal/os/BatteryStatsImpl$j$a;->d:I

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method
