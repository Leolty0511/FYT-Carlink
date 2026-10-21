.class public Lo1/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/h0$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/os/Looper;

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo1/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SharedPreferencesUtils-work-thread::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lo1/h0;->b:Landroid/os/Looper;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo1/h0;->a:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a([F)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    :try_start_0
    aget v2, p1, v1

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Lo1/h0;->e(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_7

    .line 3
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/h0$a;

    .line 4
    iget-boolean v2, v1, Lo1/h0$a;->a:Z

    if-eqz v2, :cond_6

    .line 5
    iget-object v2, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 7
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 8
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 9
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 10
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 11
    :cond_2
    instance-of v3, v2, [I

    if-eqz v3, :cond_3

    .line 12
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v3}, Lo1/s0;->p([I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 13
    :cond_3
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 14
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lo1/h0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 15
    :cond_4
    instance-of v3, v2, [F

    if-eqz v3, :cond_5

    .line 16
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast v3, [F

    invoke-virtual {p0, v3}, Lo1/h0;->a([F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 17
    :cond_5
    instance-of v3, v2, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_6

    .line 18
    check-cast v2, Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Lo1/h0;->o(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, v1, Lo1/h0$a;->a:Z

    .line 21
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(I)[F
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 4
    invoke-virtual {p0, p1}, Lo1/h0;->g(I)[F

    move-result-object v1

    .line 5
    iput-object v1, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v0

    .line 7
    :goto_0
    iget-object p1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, [F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public g(I)[F
    .locals 6

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lo1/h0;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 5
    new-array v2, p1, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public h(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v0

    .line 8
    :goto_0
    iget-object p1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public i(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 4
    invoke-virtual {p0, p1}, Lo1/h0;->j(I)[I

    move-result-object v1

    .line 5
    iput-object v1, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v0

    .line 7
    :goto_0
    iget-object p1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, [I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public j(I)[I
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lo1/h0;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 5
    new-array v2, p1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public k(I)Landroid/util/SparseIntArray;
    .locals 7

    .line 1
    iget-object v0, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    goto/16 :goto_1

    .line 4
    :cond_0
    new-instance v1, Lo1/h0$a;

    invoke-direct {v1, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 8
    iput-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v4, "Steer"

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------>> put key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 12
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    :cond_1
    move-object p1, v1

    .line 20
    :goto_1
    iget-object p1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public l(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    iput-object p2, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v0

    .line 8
    :goto_0
    iget-object p1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public m(I)[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 4
    invoke-virtual {p0, p1}, Lo1/h0;->n(I)[Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v0

    .line 7
    :goto_0
    iget-object p1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public n(I)[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lo1/h0;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 5
    new-array v2, p1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public o(Landroid/util/SparseIntArray;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(I[F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_7

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    .line 3
    iget-object v0, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, [F

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    iput-boolean v1, p1, Lo1/h0$a;->a:Z

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_2

    .line 5
    :cond_3
    array-length v0, v2

    :goto_2
    if-nez p2, :cond_4

    move v4, v3

    goto :goto_3

    .line 6
    :cond_4
    array-length v4, p2

    :goto_3
    if-eq v0, v4, :cond_5

    .line 7
    new-array v2, v4, [F

    .line 8
    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    if-lez v0, :cond_6

    .line 9
    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_6
    :goto_4
    iput-object v2, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    goto :goto_5

    .line 11
    :cond_7
    new-instance p2, Lo1/h0$a;

    invoke-direct {p2, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 12
    invoke-virtual {p0, p1}, Lo1/h0;->g(I)[F

    move-result-object v0

    iput-object v0, p2, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 13
    iput-boolean v1, p2, Lo1/h0$a;->a:Z

    .line 14
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public q(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    .line 3
    iget-object v0, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p1, Lo1/h0$a;->a:Z

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 8
    iput-boolean v1, v0, Lo1/h0$a;->a:Z

    .line 9
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public r(I[I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_7

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    .line 3
    iget-object v0, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, [I

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    iput-boolean v1, p1, Lo1/h0$a;->a:Z

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_2

    .line 5
    :cond_3
    array-length v0, v2

    :goto_2
    if-nez p2, :cond_4

    move v4, v3

    goto :goto_3

    .line 6
    :cond_4
    array-length v4, p2

    :goto_3
    if-eq v0, v4, :cond_5

    .line 7
    new-array v2, v4, [I

    .line 8
    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    if-lez v0, :cond_6

    .line 9
    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_6
    :goto_4
    iput-object v2, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    goto :goto_5

    .line 11
    :cond_7
    new-instance p2, Lo1/h0$a;

    invoke-direct {p2, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 12
    invoke-virtual {p0, p1}, Lo1/h0;->j(I)[I

    move-result-object v0

    iput-object v0, p2, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 13
    iput-boolean v1, p2, Lo1/h0$a;->a:Z

    .line 14
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/h0;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lo1/h0;->d()V

    .line 3
    iget-object v0, p0, Lo1/h0;->a:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public s(ILandroid/util/SparseIntArray;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_8

    .line 4
    iget-object v1, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    .line 5
    iget-object v1, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    check-cast v1, Landroid/util/SparseIntArray;

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 7
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    .line 8
    :goto_2
    iput-boolean v4, p1, Lo1/h0$a;->a:Z

    if-nez v4, :cond_7

    if-lez v5, :cond_7

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_7

    .line 9
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 10
    iget-boolean v7, p1, Lo1/h0$a;->a:Z

    if-nez v7, :cond_5

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v8, v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v2

    :goto_5
    iput-boolean v6, p1, Lo1/h0$a;->a:Z

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 11
    :cond_7
    :goto_6
    iget-boolean v1, p1, Lo1/h0$a;->a:Z

    if-eqz v1, :cond_b

    .line 12
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p2

    iput-object p2, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    goto :goto_7

    .line 13
    :cond_8
    new-instance v1, Lo1/h0$a;

    invoke-direct {v1, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 14
    invoke-virtual {p0, p1}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 16
    :cond_9
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 17
    :cond_a
    iput-object v3, v1, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 18
    iput-boolean v2, v1, Lo1/h0$a;->a:Z

    .line 19
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    :cond_b
    :goto_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    .line 3
    iget-object v0, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p1, Lo1/h0$a;->a:Z

    .line 4
    iput-object p2, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Lo1/h0$a;

    invoke-direct {v0, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 8
    iput-boolean v1, v0, Lo1/h0$a;->a:Z

    .line 9
    iget-object p2, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public u(I[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_7

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/h0$a;

    .line 3
    iget-object v0, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    iput-boolean v1, p1, Lo1/h0$a;->a:Z

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_2

    .line 5
    :cond_3
    array-length v0, v2

    :goto_2
    if-nez p2, :cond_4

    move v4, v3

    goto :goto_3

    .line 6
    :cond_4
    array-length v4, p2

    :goto_3
    if-eq v0, v4, :cond_5

    .line 7
    new-array v2, v4, [Ljava/lang/String;

    .line 8
    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    if-lez v0, :cond_6

    .line 9
    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_6
    :goto_4
    iput-object v2, p1, Lo1/h0$a;->b:Ljava/lang/Object;

    goto :goto_5

    .line 11
    :cond_7
    new-instance p2, Lo1/h0$a;

    invoke-direct {p2, p0}, Lo1/h0$a;-><init>(Lo1/h0;)V

    .line 12
    invoke-virtual {p0, p1}, Lo1/h0;->n(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lo1/h0$a;->b:Ljava/lang/Object;

    .line 13
    iput-boolean v1, p2, Lo1/h0$a;->a:Z

    .line 14
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/h0;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lo1/h0;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
