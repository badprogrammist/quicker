<%@ page import="ru.quicker.project.Task" %>

<table>
    <thead>
        <th>#</th>
        <th>Статус</th>
        <th>Описание</th>
        <th>Дата создания</th>
        <th>Кто поставил</th>
    </thead>
    <tbody>
    <g:each in="${tasks}" var="taskInstance">
        <tr>
            <td>
                ${taskInstance.id}
            </td>
            <td>
                ${taskInstance.closed ? "Закрыта" : "Открыта"}
            </td>
            <td>
                ${taskInstance.description}
            </td>
            <td>
                ${taskInstance.dateCreated}
            </td>
            <td>
                ${taskInstance.user.name}
            </td>
        </tr>
    </g:each>
    </tbody>
</table>
<ul>

</ul>

